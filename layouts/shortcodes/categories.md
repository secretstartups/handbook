{{ $sections := partials.IncludeCached "data/sections" . }}
{{ $categories := partials.IncludeCached "data/categories" . }}
{{ $stages := partials.IncludeCached "data/stages" . }}
{{ $features := partials.IncludeCached "data/features" . }}
{{ $team_dict := partials.IncludeCached "data/team-by-name" . }}

{{ range $section_key, $section_data := $sections }}
{{ $section_name := $section_data.name }}
### {{ $section_data.name }} section

{{ with $section_data.slack.channel }}
**Slack Channel:** [{{.}}](https://gitlab.slack.com/app_redirect?channel=#{{.}})
{{ end }}
{{ with $section_data.slack.alias }}
**Slack Alias:** {{.}}
{{ end }}
{{ with $section_data.gitlab_group }}
**GitLab Group:** @{{.}}
{{ end }}
{{ with $section_data.handbook }}
[Handbook](/handbook/{{.}})
{{ end }}
<!-- First entry is for a group the second is for an individual or array -->
{{ with $section_data.pm_team_tag }}
**Product:** {{.}} <!-- #{team_links_from_group(group: section.pm_team_tag)} -->
{{ end }}
{{ with $section_data.pm }}
**Product:** {{ if reflect.IsSlice . }}
{{ range . }}
{{ partial "member-by-name" . }}
{{ end }}
{{ else }}
{{ partial "member-by-name" . }}
{{end}}
{{ end }}
{{ with $section_data.development_team_tag }}
**Development:** {{.}}
{{ end }}
{{ with $section_data.em }}
**Development:**
{{ if reflect.IsSlice . }}
{{ range . }}
{{ partial "member-by-name" . }}
{{ end }}
{{ else }}
{{.}}
{{end}}
{{ end }}
{{ with $section_data.pdm }}
**Product Design:**
{{range .}}
{{ partial "member-by-name" . }}
{{ end }}
{{ end }}
{{ with $section_data.spd }}
**Staff Product Designer:** {{.}}
{{ end }}
{{ with $section_data.uxr }}
{{ if reflect.IsSlice . }}
**UX Research:**
{{ range . }}
{{ partial "member-by-name" . }}
{{ end }}
{{ else }}
**UX Research:** {{ partial "member-by-name" . }}
{{end}}
{{ end }}
{{ with $section_data.focus }}
**Focus** {{.}}
{{ end }}
{{ with $section_data.support_team_tag }}
**Support:** {{.}}
{{ end }}
{{ with $section_data.sm }}
**Support:** {{.}}
{{ end }}
{{ with $section_data.pmm_team_tag }}
**Product Marketing:** {{.}}
{{ end }}
{{ with $section_data.pmm }}
**Product Marketing Manager:** {{ if reflect.IsSlice . }}
{{ range . }}
- [{{.}}](https://about.gitlab.com/company/team#{{ index $team_dict . }})
{{ end }}
{{ else }}
{{.}}
{{end}}
{{ end }}
{{ with $section_data.quality_team_tag }}
**Quality:** {{.}}
{{ end }}
{{ with $section_data.qm }}
**Quality:** {{ if reflect.IsSlice . }}
{{ range . }}
- [{{.}}](https://about.gitlab.com/company/team#{{ index $team_dict . }})
{{ end }}
{{ else }}
{{.}}
{{end}}
{{ end }}
{{ with $section_data.cm_team_tag }}
**Content Marketing:** {{.}}
{{ end }}
{{ with $section_data.cm }}
**Content Marketing:** {{.}}
{{ end }}
{{ with $section_data.tw_team_tag }}
**Technical Writing:** {{.}}
{{ end }}
{{ with $section_data.tw }}
**Technical Writing:**
{{ if reflect.IsSlice . }}
{{ range . }}
- [{{.}}](https://about.gitlab.com/company/team#{{ index $team_dict . }})
{{ end }}
{{ else }}
{{.}}
{{end}}
{{ end }}
{{ with $section_data.cs_team_tag }}
**Customer Success:** {{.}}
{{ end }}
{{ with $section_data.ar_team_tag }}
**Analyst Relations:** {{.}}
{{ end }}
{{ with $section_data.rem }}
**Infrastructure Manager:** [{{.}}](https://about.gitlab.com/company/team#{{ index $team_dict . }})
{{ end }}
{{ with $section_data.legal_team_tag }}
**Legal & Corporate Affairs:** {{.}}
{{ end }}

{{ range $key, $data := $stages.stages }}
{{ if eq $section_key $data.section }}
#### {{ $key }} stage

{{ range $k, $d := $data.groups }}
##### {{$d.name}} group
K = {{ $k }}
```json
{{ $d | jsonify (dict "indent" "  ")}}
```
{{ end}}

{{ end }}
{{ end }}
{{ end }}
<style>
    img.avatar {
    width: 30px;
    height: 30px;
    max-width: 30px;
    max-height: 30px;
    overflow: hidden;
    margin-right: 10px;
    border-radius: 50%;
    border: 1px solid lightgray;
    aspect-ratio: auto 90 / 90;
    overflow-clip-margin: content-box;
    }
</style>
