{{- /*  Initialize. */}}
{{- $title := "" }}

{{- /* Get params. */}}
{{- with (.Get 0) }}
  {{- $title = . }}
{{- else }}
  {{- errorf "The %q shortcode requires a single positional argument."}}
{{- end }}

{{ $dataURL := printf "https://gitlab.com/gitlab-com/www-gitlab-com/-/raw/master/data/tech_stack.yml"}}
{{ with resources.GetRemote $dataURL }}
  {{ with .Err}}
    <h2>Unable to fetch performance indicator Data</h2>
  {{ else }}
    {{ $data := . | transform.Unmarshal }}
    {{ range $data }}
        {{ if eq .title $title }}
- **Description:** {{ .description }}
- **Provisioner:** {{ .provisioner }}
- **Deprovisioner:** {{ .deprovisioner }}
- **Critical Systems Tier:** {{ .critical_systems_tier }}
        {{ end }}
    {{ end }}
    {{ end }}
{{ end }}
