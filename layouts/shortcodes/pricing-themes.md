{{ range .Params }}
##### {{ . }}
{{ $tier := . }}
{{ with resources.GetRemote "https://gitlab.com/gitlab-com/www-gitlab-com/-/raw/master/data/pricing_themes.yml" }}
  {{ with .Err}}
## Unable to fetch performance indicator Data
  {{ else }}
    {{ $data := . | transform.Unmarshal }}
    {{ range $data }}
        {{ if eq .tier $tier }}
1. {{ .name }}
        {{ end }}
    {{ end }}
{{ end }}
{{ end }}
{{ end }}
