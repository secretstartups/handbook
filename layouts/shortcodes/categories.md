{{- $sections := partials.IncludeCached "data/sections" page }}
{{- $categories := partials.IncludeCached "data/categories" page }}
{{- $stages := partials.IncludeCached "data/stages" page }}
{{- $features := partials.IncludeCached "data/features" page }}
{{- range $section_key, $section_data := $sections }}
{{- $section_name := $section_data.name }}

### {{ $section_data.name }} section

{{ partial "categories/section-heading.html" $section_data }}

{{- range $key, $data := $stages }}
{{- if eq $section_key $data.section }}

#### {{ $key }} stage

{{ partial "categories/section-heading.html" $data }}

{{ range $k, $d := $data.groups }}

##### {{ $d.name }} group

{{ partial "categories/developer-count.html" $d }}

{{- $d = merge $d (dict "group" true) }}
{{- $d = merge $d (dict "display_name" .name) }}
{{ partial "categories/section-heading.html" $d }}


{{ with .categories }}
<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Maturity</th>
            <th>Marketing Link</th>
            <th>Documentation Link</th>
            <th>Direction Link</th>
        </tr>
    </thead>
    <tbody>
{{- range . -}}
    {{- with (index $categories .) -}}
{{- $bullet := "" -}}
{{- $maturity := strings.Title .maturity -}}
{{- $marketingPage := "" -}}
{{- $documentationPage := "" -}}
{{- $directionPage := "" -}}
{{- if eq .maturity "planned" -}}
    {{- $available := time .available -}}
    {{- $maturity = printf "Planned %s" (time.Format "2006" $available) -}}
{{- end -}}
{{- with .marketing_page -}}
    {{ $marketingPage = printf "<a href=\"%s\" class=\"btn btn-primary\">Marketing Page</a>" . -}}
{{- end -}}
{{- with .documentation -}}
    {{- $documentationPage = printf "<a href=\"%s\" class=\"btn btn-primary\">Documentation</a>" . -}}
{{- end -}}
{{- with .direction -}}
    {{- $directionPage = printf "<a href=\"%s\" class=\"btn btn-primary\">Direction Page</a>" . -}}
{{- end -}}
{{- $bullet = printf "%s <span class=\"badge bg-primary\">%s</span> %s %s %s" .name $maturity $marketingPage $documentationPage $directionPage -}}
    <tr>
        <td>{{ .name }}</td>
        <td class="text-center"><span class="badge bg-primary">{{- $maturity -}}</span></td>
        <td>{{ $marketingPage }}</td>
        <td>{{ $documentationPage }}</td>
        <td>{{ $directionPage }}</td>
    </tr>
    {{- end -}}
{{- end -}}
    </tbody>
</table>
{{- end -}}
{{- end}}

{{- end }}
{{- end }}
{{- end }}

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
