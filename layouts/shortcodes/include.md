{{- /*  Initialize. */}}
{{- $asset := "" }}

{{- /* Get params. */}}
{{- with (.Get 0) }}
  {{- $asset = . }}
{{- else }}
  {{- errorf "The %q shortcode requires a single positional parameter; the relative path to a file in the assets directory. See %s" .Name .Position}}
{{- end }}

{{- /* Get resource. */}}
{{- with resources.Get $asset }}
  {{- $content := .Content | emojify }}
  {{ $content | markdownify }}
{{- else }}
  {{- errorf "The %q shortcode was unable to find %q. See %s" .Name $asset .Position}}
{{- end }}

{{- /* Chomp trailing newlines. */ -}}
