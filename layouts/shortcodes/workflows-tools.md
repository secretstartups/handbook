{{ $techStack := partials.IncludeCached "data/tech-stack" page }}

<table>
    <thead>
      <tr>
        <th>Tool</th>
        <th>Description</th>
        <th>How we use it</th>
        <th>Technical owner</th>
      </tr>
    </thead>
    <tbody>
    {{ range $techStack }}
     {{ if or (eq .group_owner "Developer Relations") (strings.Contains .title "Zapier") }}
        <tr>
            <td>{{ .title }}</td>
            <td>{{ .description | markdownify }}</td>
            <td>{{ .handbook_link | markdownify }}</td>
            <td>{{- if .technical_owner }}
                {{- $to := strings.Split .technical_owner "," }}
                {{- range  $to }}
                    {{- if gt (len $to) 1 }}
                        <div class="mb-2">{{ partial "member-by-name" . }}</div>
                    {{- else }}
                        {{ partial "member-by-name" . }}
                    {{- end }}
                {{- end }}
              {{- end }}</td>
        </tr>
        {{ end }}
    {{ end }}
    </tbody>
</table>
