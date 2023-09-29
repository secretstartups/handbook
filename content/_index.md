---
title: The GitLab Handbook
---

{{< blocks/cover title="Welcome to the GitLab Handbook" image_anchor="top" color="primary" >}}

<form class="td-sidebar__search d-flex align-items-center" style="margin: 1.5em 0em;">
    <div class="td-search td-search--offline">
  <div class="td-search__icon"></div>
  <input type="search" class="bg-white text-black td-search__input form-control"  style="padding-left: 2em;" placeholder="Search the Handbook…" aria-label="Search the Handbook…" autocomplete="off" data-offline-search-index-json-src="/offline-search-index.json" data-offline-search-base-href="/" data-offline-search-max-results="10">
</div>
<button class="btn btn-link td-sidebar__toggle d-md-none p-0 ms-3 fas fa-bars" type="button" data-bs-toggle="collapse" data-bs-target="#td-section-nav" aria-controls="td-section-nav" aria-expanded="false" aria-label="Toggle section navigation"></button>
  </form>

{{% /blocks/cover %}}

{{< homepage-data-toc >}}

{{< blocks/section color="dark" type="row" >}}
{{< include "includes/take-gitlab-for-a-spin.md" >}}
<style>
    a.btn-lg {
        color: #fff !important;
        }
    .td-box--dark > .col > .row > .row > .go-for-a-spin {
        border-right: 3px solid #fff !important;
        padding-bottom: 0px !important;
    }
    .td-box--dark > .col > .row > .row > .col > a {
        color: #bdd7fe;
    }
    .td-box--dark > .col > .row > hr {
        display: none;
    }
    .td-box--dark > .col > .row > p {
        display: none;
    }
</style>
{{< /blocks/section >}}
