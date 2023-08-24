{{- /*  Initialize. */}}
{{- $gitlabid := "" }}
{{- $trim := 0 }}

{{- /* Get params. */}}
{{- with (.Get "username") }}
  {{- $gitlabid = . }}
{{- else }}
  {{- errorf "The %q shortcode requires a username parameter.  This is your GitLab username." .Name}}
{{- end }}

{{- with (.Get "trim") }}
    {{- $trim = int . }}
{{- end }}

{{- $url := printf "https://gitlab.com/%s/%s/-/raw/main/README.md" $gitlabid $gitlabid}}

{{ with resources.GetRemote $url }}
  {{ with .Err}}
    <h2>Unable to fetch remote markdown page: {{ $url }}</h2>
  {{ else }}
      {{ $content := .Content }}
      {{ $line := ""}}
      {{ if (gt $trim 0) }}
      {{ range (seq 0 $trim) }}
      {{ $line := index (split $content "\n") . }}
      {{ $content = replace $content $line "" }}
      {{ end }}
      {{ end }}
      {{ $content = replace $content "## Table of Contents" "" }}
      {{ $content = replace $content "[[_TOC_]]" "" }}
      {{ $content }}
  {{ end }}
{{ end }}

{{- /* Chomp trailing newlines. */ -}}
