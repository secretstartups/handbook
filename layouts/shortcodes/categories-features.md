{{ $sections := partials.IncludeCached "data/sections" . }}
{{ $categories := partials.IncludeCached "data/categories" . }}
{{ $stages := partials.IncludeCached "data/stages" . }}
{{ $features := partials.IncludeCached "data/features" . }}

{{ range $key, $values := $sections }}

## {{ .name }} Section

{{ $section_name := $key }}
{{ range $key, $data := $stages.stages }}

{{ if eq $data.section $section_name }}
{{ $stage_name := $data.display_name }}

### {{ $stage_name }}

{{ range $k, $v :=  $data.groups }}

#### {{ $stage_name }}: {{ .name }} Group

{{ partial "group_table" . }}

{{- if $v.categories }}

<table>
    <thead>
        <th>Category</th>
        <th>Features in Core</th>
        <th>Features in Premium</th>
        <th>Features in Ultimate</th>
    </thead>
    <tbody>
        {{- range $v.categories }}
        {{- $cat := . -}}
            {{- range $k, $v := $categories }}
                {{- if eq $k $cat }}
        <tr>
        <td>{{- $cat := lower $k }}<a href="{{ partial "category-best-link" . }}">{{ $v.name }}</a></td>
        <td>
            {{- range $features.features }}
                {{- if in .category $cat }}
                    {{- if .gitlab_core }}
                    <p><a href="{{.link}}">{{.title}}</a></p>
                {{- end }}
                {{- end }}
            {{- end }}
        </td>
        <td>{{- range $features.features }}
                {{- if in .category $cat }}
                    {{- if and (not .gitlab_core) .gitlab_premium }}
                    <p><a href="{{.link}}">{{.title}}</a></p>
                {{- end }}
                {{- end }}
            {{- end }}</td>
        <td>{{- range $features.features }}
                {{- if in .category $cat }}
                    {{- if and (not .gitlab_core) (not .gitlab_premium) .gitlab_ultimate }}
                    <p><a href="{{.link}}">{{.title}}</a></p>
                {{- end }}
                {{- end }}
            {{- end }}</td>
        </tr>
                {{- end }}
            {{- end }}
        {{- end }}
    </tbody>
</table>

{{- end -}}
{{- end -}}
{{- end -}}
{{- end -}}
{{- end -}}


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
