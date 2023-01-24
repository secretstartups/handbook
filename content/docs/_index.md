---
title: Contributing Guidelines
# menu:
#   main:
#     name: Contribute
#     weight: -20
#     pre: '<i class="fa fa-pen"></i>'
---

In general, content management on the internal handbook is very similar to the public handbook. The key differences are described on this page.

## Differences from Public handbook

1. Content is maintained in the **`/content` directory, not `/source`**. See [the directory structure]({{< relref "#content-structure" >}}) below.
1. Child pages of a section and their summary are automatically listed at the bottom of each [section page]({{< relref "#section-pages" >}}).
1. Pages can only be authored as `.html` or `.md` and you should use only one file extension or the other. Instead of creating `my-team/about/index.html.md` simply use `my-team/about.md`.

## Section Pages

Section pages (i.e. `_index.md`) are a bit special. If you are creating a new section (i.e. a directory that will have child pages), you should always include a `_index.md` in the same directory. By default, the bottom of your "section" page will include a list of child pages within the section. See as an example.

## Content Structure

Below is an example of the content structure used for this site:

```plain
content
├── docs
│   └── _index.md
├── handbook
│   ├── alliances
│   │   ├── _index.md
│   │   ├── aws.md
│   │   ├── ecosystempartners.md
│   │   ├── gcp.md
│   │   ├── ibm.md
│   │   └── redhat.md
│   ├── company
│   │   ├── _index.md
│   │   ├── communication
│   │   │   ├── _index.md
│   │   │   └── project-code-names.md
│   │   ├── crisis-process.md
│   │   └── performance-indicators
│   │       ├── _index.md
│   │       ├── product
│   │       │   ├── _index.md
│   │       │   ├── dev-section.md
│   │       │   ├── enablement-section.md
│   │       │   ├── modelops-section.md
│   │       │   ├── ops-section.md
│   │       │   ├── sec-section.md
│   │       │   └── stages-and-groups.md
│   │       └── sales.md
│   └── ...
```

{{< alert title="Under Construction" color="warning" >}}
Contributing guidelines are WIP. If you are feeling ambitious here are some useful links:

- [Hugo Docs](https://gohugo.io/documentation/)
- [Docsy Shortcodes](https://www.docsy.dev/docs/adding-content/shortcodes/)
{{</ alert >}}
