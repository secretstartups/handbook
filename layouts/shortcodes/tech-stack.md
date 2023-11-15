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
{{ with .provisioner }}
- **Provisioner:** {{ . }}
{{ end }}
{{ with .deprovisioner }}
- **Deprovisioner:** {{ . }}
{{ end }}
{{ with .need_move_to_okta }}
- **Okta Enabled:** {{ . }}
{{ end }}
{{ with .critical_systems_tier }}
- **Critical Systems Tier:** {{ . }}
{{ end }}
        {{ end }}
    {{ end }}
    {{ end }}
{{ end }}
