{{- /*  Initialize. */}}
{{- $asset := "" }}
{{- $trim := 0 }}

{{- /* Get params. */}}
{{- with (.Get 0) }}
  {{- $asset = . }}
{{- else }}
  {{- errorf "The %q shortcode requires 2 positional parameter; the url to a file. See %s" .Name .Position}}
{{- end }}

{{- with (.Get 1) }}
    {{- $trim = int . }}
{{- end }}

{{ with resources.GetRemote $asset }}
  {{ with .Err}}
    <h2>Unable to fetch remote markdown page</h2>
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
