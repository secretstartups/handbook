{{- /*  Initialize. */}}
{{- $stageKey := "" }}
{{- /* Get params. */}}
{{- with (.Get 0) }}
  {{- $stageKey = . }}
{{- else }}
  {{- errorf "The %q shortcode requires a single positional argument."}}
{{- end }}
{{- $jtbd := partials.IncludeCached "data/jobs-to-be-done" page -}}
{{- range $jtbd }}
{{- if and (not .parent) (eq .group $stageKey) }}
{{- $slug := .slug }}

#### {{ .short_jtbd }}

{{ .jtbd }}

<table>
    <thead>
        <tr>
          <th>Micro Job</th>
          <th>Job statement</th>
          <th>Maturity</th>
          <th>Confidence</th>
          <th>Source</th>
        </tr>
    </thead>
    <tbody>
        {{- range $jtbd -}}
        {{- if eq .parent $slug }}
        <tr>
            <td>{{ .micro_job }}</td>
            <td>{{ .jtbd }}</td>
            <td><span class="badge text-bg-dark">Grade {{partial "ux-grade" .grade }}</span></td>
            <td>{{ .confidence }}</td>
            <td>{{- with .source -}}<a href="{{ . }}">Issue</a>{{- end -}}</td>
        </tr>
        {{- end }}
        {{- end }}
    </tbody>
</table>



{{ end }}

{{- end -}}
