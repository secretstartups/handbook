{{ $sections := partials.IncludeCached "data/sections" page }}
{{ $categories := partials.IncludeCached "data/categories" page }}
{{ $stages := partials.IncludeCached "data/stages" page }}
{{ $features := partials.IncludeCached "data/features" page }}


{{ range $section_key, $section_data := $sections }}
{{ $section_name := $section_data.name }}
### {{ $section_data.name }} section

{{- (partial "categories-section-heading.html" $section_data) -}}

{{ range $key, $data := $stages }}
{{ if eq $section_key $data.section }}
#### {{ $key }} stage

{{- (partial "categories-section-heading.html" $data) -}}

{{ range $k, $d := $data.groups }}
##### {{$d.name}} group

{{- (partial "categories-section-heading.html" $d) -}}

{{ end}}

{{ end }}
{{ end }}
{{ end }}
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
