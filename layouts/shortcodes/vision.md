{{ with resources.GetRemote "https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/raw/main/content/company/vision/index.yml" }}
  {{ with .Err}}
    <h2>Unable to fetch Vision Page Data</h2>
  {{ else }}
      {{ $data := . | transform.Unmarshal }}
      {{ range $data.side_menu.content }}
      {{ range .data.block }}
      {{ $content := .text}}
      {{ $content = replaceRE `{:data-ga-name="[^"]*"}{:data-ga-location="[^"]*"}` "" $content}}
      {{ $content = replaceRE `{data-ga-name="[^"]*" data-ga-location="[^"]*"}` "" $content}}
      {{ $line := index (split $content "\n") 0 }}
      {{ $content = replace $content $line "" }}
      {{ $content }}
      {{ end }}
      {{ end }}
{{ end }}
{{ end }}
