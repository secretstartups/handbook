{{ $sections := "" }}
{{ $stages := "" }}
{{ $categories := "" }}
{{ $team_dict := dict  }}

{{ with resources.GetRemote "https://gitlab.com/gitlab-com/www-gitlab-com/-/raw/master/data/sections.yml" }}
  {{ with .Err}}
    <h2>Unable to fetch stages Data</h2>
  {{ else }}
      {{ $sections = . | transform.Unmarshal }}
  {{ end }}
{{ end }}

{{ with resources.GetRemote "https://gitlab.com/gitlab-com/www-gitlab-com/-/raw/master/data/stages.yml" }}
  {{ with .Err}}
    <h2>Unable to fetch stages Data</h2>
  {{ else }}
      {{ $stages = . | transform.Unmarshal }}
  {{ end }}
{{ end }}

{{ with resources.GetRemote "https://gitlab.com/gitlab-com/www-gitlab-com/-/raw/master/data/categories.yml" }}
  {{ with .Err}}
    <h2>Unable to fetch stages Data</h2>
  {{ else }}
      {{ $categories = . | transform.Unmarshal }}
  {{ end }}
{{ end }}

{{ with resources.GetRemote "https://about.gitlab.com/company/team/team.yml" (dict "mediaType" "application/yaml")}}
  {{ with .Err}}
    <h2>Unable to fetch Team Member Data File</h2>
  {{ else }}
      {{ $data := .Content | transform.Unmarshal }}
      {{ $team := sort $data "name" }}
      {{ range $team }}
      {{ $team_dict = merge $team_dict (dict .name .gitlab) }}
      {{ end }}
  {{ end }}
{{ end }}

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
- [{{.}}](https://about.gitlab.com/company/team#{{ index $team_dict . }})
{{ end }}
{{ else }}
[{{.}}](https://about.gitlab.com/company/team#{{ index $team_dict . }})
{{end}}
{{ end }}
{{ with $section_data.development_team_tag }}
**Development:** {{.}}
{{ end }}
{{ with $section_data.em }}
**Development:**
{{ if reflect.IsSlice . }}
{{ range . }}
- [{{.}}](https://about.gitlab.com/company/team#{{ index $team_dict . }})
{{ end }}
{{ else }}
{{.}}
{{end}}
{{ end }}
{{ with $section_data.pdm }}
**Product Design:**
{{range .}}
- [{{.}}](https://about.gitlab.com/company/team#{{ index $team_dict . }})
{{ end }}
{{ end }}
{{ with $section_data.spd }}
**Staff Product Designer:** {{.}}
{{ end }}
{{ with $section_data.uxr }}
{{ if reflect.IsSlice . }}
**UX Research:**
{{ range . }}
- [{{.}}](https://about.gitlab.com/company/team#{{ index $team_dict . }})
{{ end }}
{{ else }}
**UX Research:** [{{.}}](https://about.gitlab.com/company/team#{{ index $team_dict . }})
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
