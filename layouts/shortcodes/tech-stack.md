{{- /*  Initialize. */}}
{{- $title := "" }}

{{- /* Get params. */}}
{{- with (.Get 0) }}
  {{- $title = . }}
{{- else }}
  {{- errorf "The %q shortcode requires a single positional argument."}}
{{- end }}


{{- $techStack := partials.IncludeCached "data/tech-stack-by-title" page }}
{{- with (index $techStack $title) }}
- **Description:** {{ .description }}
{{- with .provisioner }}
- **Provisioner:** {{ . }}
{{- end }}
{{- with .deprovisioner }}
- **Deprovisioner:** {{ . }}
{{- end }}
{{- with .need_move_to_okta }}
- **Okta Enabled:** {{ . }}
{{- end }}
{{- with .critical_systems_tier }}
- **Critical Systems Tier:** {{ . }}
{{- end }}
{{- end }}
