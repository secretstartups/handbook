{{ $page := .}}
{{- $teamDict := dict }}
{{- $dataURL := printf "https://about.gitlab.com/company/team/team.yml" }}
{{- with resources.GetRemote $dataURL (dict "mediaType" "application/yaml")}}
  {{- with .Err}}
    <h2>Unable to fetch Team Member Data File</h2>
  {{- else }}
      {{- $data := .Content | transform.Unmarshal }}
      {{- $team := sort $data "name" }}
      {{- range $team }}
          {{- $teamDict = merge $teamDict (dict (lower .name) . ) }}
      {{- end }}
  {{ end }}
{{- end }}


  <table>
    <thead>
      <tr>
        <th>
          Tool
        </th>
        <th>
          Description
        </th>
        <th>
          How we use it
        </th>
        <th>
          Technical owner
        </th>
      </tr>
    </thead>
    <tbody>
{{ $dataURL := printf "https://gitlab.com/gitlab-com/www-gitlab-com/-/raw/master/data/tech_stack.yml"}}
{{ with resources.GetRemote $dataURL }}
  {{ with .Err}}
    <h2>Unable to fetch performance indicator Data</h2>
  {{ else }}
    {{ $data := . | transform.Unmarshal }}
    {{- $img := "" }}
    {{- $username := "" }}
    {{ range $data }}
    {{ if or (eq .group_owner "Developer Relations") (strings.Contains .title "Zapier") }}
        <tr>
            <td>{{ .title }}</td>
            <td>{{ .description | markdownify }}</td>
            <td>{{ .handbook_link | markdownify }}</td>
            <td>
                {{ range strings.Split .technical_owner "," }}
                {{ with (index $teamDict (lower (trim . " "))) }}
                    {{ $username = .gitlab }}
                    {{- with (partial "gitlab/api" (dict
                                "path" "/users"
                                "query" (dict
                                  "username" $username
                                )
                        ))
                    -}}
                      {{- /* GitLab returns '[]' instead of nothing. */}}
                      {{- if gt (len .) 0 }}
                        {{- $u := index . 0 }}
                        {{- with $u.avatar_url }}
                          {{- with resources.GetRemote . }}
                            {{- $img = .Fill "90x90" }}
                          {{- end }}
                        {{- end }}
                      {{- end }}
                    {{- end }}
                      <a href="https://gitlab.com/{{ .gitlab }}"><img class="avatar" src="{{ $img.RelPermalink }}" width="{{ .img.Width }}" height="{{ .img.Height }}" alt="{{ .name }}">{{.name}}</a><br>
                  {{ end }}
                {{ end }}
              </td>
        </tr>
        {{ end }}
    {{ end }}
    {{ end }}
{{ end }}
    </tbody>
  </table>

<style>
      img.avatar {
      width: 30px;
      height: 30px;
      max-width: 30px;
      max-height: 30px;
      overflow: hidden;
      margin-right: 10px;
      border-radius: 50%;
      border: 1px solid lightgray;
      aspect-ratio: auto 90 / 90;
      overflow-clip-margin: content-box;
      }
  </style>
