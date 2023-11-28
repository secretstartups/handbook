{{ $dataStages := partials.IncludeCached "data/data-stages" . }}
{{ range $dataStages }}
## {{ .title }}

{{ .description | markdownify }}
{{ end }}
