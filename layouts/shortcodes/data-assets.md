{{ $dataStages := partials.IncludeCached "data/data-assets" . }}
{{ range $dataStages }}
### {{ .title }}

{{ .description | markdownify }}
{{ end }}
