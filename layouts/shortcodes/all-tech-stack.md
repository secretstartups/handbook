{{- $techStack := partials.IncludeCached "data/tech-stack" page }}
{{- range $techStack }}
## {{ .title }}

{{ .description  | markdownify }}

{{- with .handbook_link }}
**Handbook Guide:** {{ . | markdownify }}
{{- end }}
{{- end }}
