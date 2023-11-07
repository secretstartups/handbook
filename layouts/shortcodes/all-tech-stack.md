{{ $dataURL := printf "https://gitlab.com/gitlab-com/www-gitlab-com/-/raw/master/data/tech_stack.yml"}}
{{ with resources.GetRemote $dataURL }}
  {{ with .Err}}
    <h2>Unable to fetch performance indicator Data</h2>
  {{ else }}
    {{ $data := . | transform.Unmarshal }}
    {{ range $data }}
## {{ .title }}

{{ .description  | markdownify }}

{{ with .handbook_link }}
**Handbook Guide:** {{ . | markdownify }}
{{ end }}
    {{ end }}
    {{ end }}
{{ end }}
