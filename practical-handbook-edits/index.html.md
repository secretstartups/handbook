---
layout: handbook-page-toc
title: "Practical Handbook Edits Examples"
description: "Video recordings and written tips for non-engineering team members on how to work Handbook-First"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

This page contains instructions, tips, and historical recordings for non-technical team members on how to work Handbook-First. This page is intended to be complementary to [Using GitLab at GitLab](/handbook/using-gitlab-at-gitlab/#using-gitlab-competency), and we suggest you start there if you have not yet completed the [GitLab 101 Tool Certification](/handbook/people-group/learning-and-development/gitlab-101/).

**Have your own practical Handbook editing tips? Drop a video below!**

## Using the Web IDE to edit the handbook 

The [Web IDE](https://docs.gitlab.com/ee/user/project/web_ide/index.html) based on VS Code was [released as Beta on 2022-12-19](/blog/2022/12/15/get-ready-for-new-gitlab-web-ide/) and is the new default with GitLab 16.0. This handbook section explains a typical workflow to edit the handbook:

1. [Use the Web IDE to make changes](https://docs.gitlab.com/ee/user/project/web_ide/#use-the-web-ide).
1. [Commit changes](https://docs.gitlab.com/ee/user/project/web_ide/#commit-changes).
1. Create a merge request, [assign reviewers](/handbook/handbook-usage/#when-to-get-approval).
1. Edit a merge request during reviews. 

_Please go with bias for action to add updates to this handbook page as the Web IDE development continues, and more features are added to improve the workflows. Feel free to assign @dnsmichi for review._

### Practical handbook edits: Web IDE and single file editor 

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/DJo4bQdawSo" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

This video covers:
- Editing the marketing handbook as example
- `Edit this page` action using the Web IDE, overview walkthrough, editing the handbook, again creating a merge request with the same actions. 
- Practical handbook edit tips showning this handbook. 

### Web IDE editing steps 

1. Navigate to the handbook page you want to edit. At the bottom, or on the right, click on the URL `Edit this page` to open the new Web IDE. 
    - Alternatively, open the [www-gitlab-com](https://gitlab.com/gitlab-com/www-gitlab-com) project and select `Web IDE` from the edit actions. This requires you to navigate into the source tree where the handbook files are located. 

   ![Handbook page at the bottom, action: Edit in Web IDE](/images/handbook/editing/practical_handbook_edits_web_ide_vs_code_bottom_handbook_action.png)

2. Familiarize yourself with the [Web IDE](https://docs.gitlab.com/ee/user/project/web_ide/):
    - The menu sections are located on the left
    - The explorer section provides the file tree for the project, which is opened automatically when editing a handbook file. (keyboard shortcut: `Shift+Cmd+E`)
    - The editing view is on the right side. On top, there are tabs to organize open files. 
    - Additional meta information is provided at the bottom. Git branch, problems, current line number, spaces for indentation, encoding, end-of-line sequence, language mode, layout, notifications. 
    - **Tip:** Hover over the menu sections and items to learn more about their purpose and keyboard shortcuts. 
  
    ![Web IDE overview, handbook page highlighted in the file tree](/images/handbook/editing/practical_handbook_edits_web_ide_vs_code_file_tree_edit_handbook_page.png)

3. Edit the selected file, and try the Markdown preview. `Cmd+Shift+P` on macOS opens the Web IDE command palette to search for commands. For example, type `Markdown`, select `Markdown: Open Preview to the Side` and try the preview. 
    - Note that the [handbook markdown engine](/handbook/markdown-guide/) supports more rendering features than the [Web IDE preview based on VS Code](https://code.visualstudio.com/docs/languages/markdown), and some items won't be rendered properly. Commit and create a [draft merge request](https://docs.gitlab.com/ee/user/project/merge_requests/drafts.html) to view the handbook [review apps](https://docs.gitlab.com/ee/ci/review_apps/) to e.g. verify embedded images. 

    ![Web IDE editor, Markdown preview](/images/handbook/editing/practical_handbook_edits_web_ide_vs_code_console_markdown.png)

4. Upload new files by right-clicking and selecting `Upload...` for example images into `source/images/handbook/` and the corresponding file tree, following the handbook directories. 

    ![Web IDE overview, upload files](/images/handbook/editing/practical_handbook_edits_web_ide_vs_code_file_upload_images.png)

5. Open the `Source Control` icon on the left menu which has a blue marker for counting the file changes. Tip: Keyboard shortcut `Ctrl+Shift+G`. 

    ![Web IDE menu, source control](/images/handbook/editing/practical_handbook_edits_web_ide_vs_code_menu_explorer_search_source_control.png)

6. Review the changed files, and once ready, specify a Git commit message and click `Commit & Push`. Keyboard shortcut:  `Cmd+Enter`.

    ![Web IDE, commit and push: Commit message](/images/handbook/editing/practical_handbook_edits_web_ide_vs_code_source_control_commit_message.png)

7. Commit the changes to a new Git branch (leave selection, press `Enter`).

    ![Web IDE, commit and push: Create a new branch](/images/handbook/editing/practical_handbook_edits_web_ide_vs_code_source_control_commit_to_a_new_branch.png)

8. Specify a new Git branch name (optional). Press `Enter` to continue. This action pushes the changes into the Git repository. The changes are persisted on the GitLab server and are immediately visible in the project view. 

    ![Web IDE, commit and push: Branch name](/images/handbook/editing/practical_handbook_edits_web_ide_vs_code_source_control_commit_new_branch_name.png)

9. Check the pop-up at the bottom right, and click `Create Merge Request` to open the GitLab MR tab. Tip: The notification bell icon at the bottom brings back the notification, if accidentally dismissed. 

    ![Web IDE, commit and push: Create Merge Request](/images/handbook/editing/practical_handbook_edits_web_ide_vs_code_source_control_popup_create_mr.png)

10. Fill in the MR template, provide why the merge request is created, add labels (e.g. using quick actions `/label ~handbook`) and assign yourself (`/assign @<yourusername>`).

    ![GitLab Merge Request view](/images/handbook/editing/practical_handbook_edits_web_ide_vs_code_gitlab_create_mr.png)

11. Make additional changes to the MR: Select `Code > Open in Web IDE` on the upper right menu. This opens the Web IDE again to make changes. All changed files are opened automatically. 

    ![Merge request, open in Web IDE](/images/handbook/editing/practical_handbook_edits_web_ide_vs_code_gitlab_mr_open_in_web_ide.png) 

12. Make changes, commit and push them, and select the MR associated branch again (follow [this issue](https://gitlab.com/gitlab-org/gitlab/-/issues/383801#note_1214559713) for UX commit flows). 

    ![Web IDE, commit and select MR associated branch](/images/handbook/editing/practical_handbook_edits_web_ide_vs_code_from_mr_changes_source_control_select_branch.png)

13. Optional: Follow the pop-up notification to navigate back to the MR. 

    ![Web IDE, go back to MR after commit and push](/images/handbook/editing/practical_handbook_edits_web_ide_vs_code_from_mr_changes_popup_go_to_mr.png)

**Tip**: Practice the keyboard shortcuts for your workflows: After making changes, `Control+Shift+G` to commit, `Cmd+Enter`, Cursor to select the branch, `Enter`, etc. 

**Note:** The `Cmd+w` keyboard shortcut to close a file tab in the Web IDE gets overridden by the Chrome browser to close the browser tab. This is a [known problem](https://gitlab.com/gitlab-org/gitlab/-/issues/386209), use this shortcut carefully. 

### Historical Recordings

In these videos, we run through the GitLab Handbook using the legacy version of the Web IDE (deprecated May 2023) with experts, uncovering how to best use the Handbook in our day-to-day work, and learning best-practices for Handbook editing along the way. They are meant to be helpful to understand generally how GitLab works, but **the instructions cannot be followed exactly since the Web IDE used is no longer live as of May 2023**.

#### Historical: Creating new handbook pages and multimedia embedding best-practices
<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/hQgS97M8abc" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

**_Please note that the video mentions that you need to go to source/handbook to create a page which is no longer the case. The handbook is located under [sites/handbook/source/handbook](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/sites/handbook/source/handbook)_**. 

This video covers:
- Creating a new handbook page - @:37
- Embedding a video - @15:25, @18:53
- Making a URL open in a new tab - @17:05
- How this page got started - @22:48

#### Historical: How to move the location of a handbook page 

[This video](https://youtu.be/aQl001ka3Y4) walks you through moving the location of a handbook page. There is a 1 min delay, so recommend starting the video at 1:03 for efficient viewing. We have seen that it may take over 24 hours for the move to completely take place, so even after the pipeline passes, you may still have an instance where the origial link AND the new link both still work. 

Keep in mind that if there are links throughout the handbook that link to the old page, you will need to update those links so people don't receive a 400 error when clicking on those links.

You may also request a redirect. That process is [outlined here](/handbook/marketing/inbound-marketing/search-marketing/#request-an-aboutgitlabcom-redirect). 

#### Historical: Changing a page name and subsequent updates
<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/HeQax_U74NM" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

This video covers:
- Renaming a URL - @1:05
- Redirecting from one URL to the other - @2:17
- Finding places where an old URL is linked and updating it to a new URL - @ 4:30

**Note:** The "find and replace a string" process that could be used for URL renaming/redirects is detailed [later in this handbook page](#find-and-replace-a-string-in-all-matching-files).
{: .note}

#### Historical: Creating mermaid diagrams
<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/SQ9QmuTHuSI" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

This video covers:
- Creating a mermaid diagram for the handbook:
   - Intro to a mermaid diagram
   - What they look like
   - Use cases for using them in the handbook

Note: Flowcharts are universally used to outline the steps of a processes in sequential order. [Every shape or symbol has its own function in a flowchart.](https://www.lucidchart.com/pages/flowchart-symbols-meaning-explained)
### Creating issue templates
<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/ObNWS3trqIY" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

This video covers:
- Why you may want to use issue templates - @0:10
- What is an issue template and how to create one - @:54
- How issue templates and boards facilitate workflow management and automation - @3:55

#### Historical: Adding images to the handbook and handbook analytics
<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/P7Nv7bzksiY" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

This video covers:
- How to see analytics on visits to a handbook page - @0:24
- When and how to add images to the handbook - @5:32
- How to keep up-to-date on changes in the handbook - @21:40

#### Historical: How to add a new directory and page to the handbook
<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/9NcJG9Bv6sQ" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

This video covers:
- How to add a new page to your section of the handbook complete with a new main page and table of contents

#### Historical: Updating individual team member YAML for managerial changes

Every GitLab team member has an entry in [team_members/person](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/data/team_members/person). There are step by step instructions on how to update the individual YAMLs in the [Edit this website locally handbook page](https://about.gitlab.com/handbook/git-page-update/#12-add-yourself-to-the-team-page)

When a new manager joins a team, updates are needed in three places:

- Manager's entry - Update job family
- Team member's entry - Update `reports_to` to include the new manager slug
- [`stages.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/stages.yml) to indicate the new manager for the team (if part of engineering/product)

## More Tips

### Pre-requisites

Some tips may require terminal shell access on macOS/Linux. Ensure that your environment is working and that you have cloned the [www-gitlab-com](https://gitlab.com/gitlab-com/www-gitlab-com) project for example.

```
git clone https://gitlab.com/gitlab-com/www-gitlab-com.git
```

Sync it. Ensure that you stash away local changed not yet committed.

```
cd www-gitlab-com
git stash
git checkout master
git pull
```

On macOS it is advised to use Homebrew and install the GNU tools. See [this blogpost](https://about.gitlab.com/blog/2020/04/17/dotfiles-document-and-automate-your-macbook-setup/) for a macOS setup.

```
brew install gnu-sed
```

### Find files

One of the shell tools provided with macOS/Linux GNU is `find`. Open a terminal an run the following command in the main directory of the `www-gitlab-com` repository to get a list of all `*.md` files. This matches `.md` as suffix.

```
find . -type f -name '*.md'
```

Instead of the `.` you can also use a directory in the current path.

```
find source/handbook -type f -name '*.md'
```

The type `f` specifies files, `d` matches for directories. When not specified, all files and directories are taken into account.

You can replace `-name` with `-regex` to do more sensitive matching, for example to match all `.md` and `.md.erb` files.

```
find . -type f -regex '.*\.md[.erb]*'
```

This can be useful to **check whether a blog post was merged to master**:

```
git checkout master
git pull
find . -type f -name '*blogpost-filename*'
```


### Find files and perform an action

This comes in handy when you want to print all matches with a prefix, or perform additional replace actions. The main principle is to follow the matching rules explained above, and add the `-exec` parameter.

The `exec` action should start a shell and execute a command in there. `sh -c '' \;` takes care of this for every file that matches. Imagine this as a loop of sequential steps to perform the action. The last missing bit is accessing the file in the current loop iteration. This is done via the `{}` marker inside the `echo` example printing the output.

Run the command in a terminal to see how it works:

```
find source/handbook/marketing -type f -name '*.md' -exec sh -c 'echo "Matched {}"' \;
```

### Replace strings in a file

The GNU `sed` shell command is useful to replace a defined string in a file. The `-i` flag specifies to do that inline in the same file. The `g` flag defines a global match, replacing all pattern matches.

```
sed -i 's/<searchtext>/<replacementtext>/g' file.md
```

On macOS, ensure that the `gnu-sed` package is installed, and run `gsed` (instead of `sed`).

```
gsed -i 's/<searchtext>/<replacementtext>/g' file.md
```

With using the `/` separator, it is necessary to escape all `/` characters in the string. You can avoid this by choosing another separator, for example `,`:

```
gsed -i 's,<searchtext>,<replacementtext>,g' file.md
```

### Find and Replace a String in all (Matching) Files

Please see the following suggestions for doing a bulk find and replace. If you rename a file/URL please remember to add a redirect to [`redirects.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/redirects.yml) by [following this process](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/doc/redirects_on_about_gitlab_com.md).

#### Using a terminal

Sometimes a project, URL target or Slack channel is being renamed. You can easily search and edit with the Web IDE on GitLab.com but for other files there is a quick and automated way required.

This method combines the find, exec and sed tips explained above. The `exec` action is now to use sed to perform an inline replacement of a pattern/string.

The following example is used in [this MR](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests/49617) for updating the Corporate Marketing project URL in all files.

```
git checkout master
git pull origin master

git checkout -b handbook/corp-mktg-project-url

find source/handbook -type f -exec sh -c 'gsed -i "s,https://gitlab.com/gitlab-com/marketing/corporate-marketing,https://gitlab.com/gitlab-com/marketing/corporate_marketing/corporate-marketing,g" "{}"' \;

git status
git diff

git commit -av -m "Handbook: Update corporate marketing project URL"

git push -u origin handbook/corp-mktg-project-url

<open URL in browser for MR>
```

To cut it down:

- Find and match all files in the `source/handbook` directory. The URL might be found in other files too.
- `exec` runs a `sed/gsed` action
- The replacement is `https://gitlab.com/gitlab-com/marketing/corporate-marketing` with `https://gitlab.com/gitlab-com/marketing/corporate_marketing/corporate-marketing`
- Verify the changes with `git status` and `git diff` before committing them
- Commit, push and create the MR from the URL

#### Using Visual Studio Code

You can also do bulk find and replace operations using [Visual Studio Code](https://code.visualstudio.com/download) along with the [GitLab Workflow extension for VS Code](https://docs.gitlab.com/ee/user/project/repository/vscode.html). The following steps were used in this [MR](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests/106599) for updating `sub-value` to `operating principle`.

On macOS this can be a fairly seamless experience if you clone the project ([`www-gitlab-com`](https://gitlab.com/gitlab-com/www-gitlab-com) for the Handbook) [using SSH](https://about.gitlab.com/handbook/git-page-update/#clone-via-ssh) and then use [1Password for SSH & Git](https://developer.1password.com/docs/ssh/).

Once you've configured and installed `Visual Studio Code` and logged into the `GitLab Workflow extension for VS Code` open the `www-gitlab-com` directory where you've synced the repo.

Create a new branch by:

1. Clicking on `master` in the bottom bar
1. Select `Create new branch`
1. Enter a branch name
1. Press the enter key

You can then use the `Search` functionality (`⌘⇧F`) to find all files matching your desired search. Searching in `Visual Studio Code` allows matching case, matching whole word, or using Regular Expressions. If you click on the ellipsis (`…`) you also have the option to include or exclude files by pattern matching on the path (uses commas to delimit multiple includes/excludes).

You can do a `Replace All` across all files with the matching search term directly in the `Search` functionality:

1. Click on the disclosure arrow next to the `Search` field or enter `⌘⇧H`
1. Enter the `Search` term
1. Enter the `Replace` term
1. Click on the `Replace All` button next to the `Replace` field or enter `⌥⌘Enter`

Once you've made your edits use the `Source Control` (`⌃⇧G`) functionality to:

1. Stage your changes by clicking on the `+` sign for each file, or the `+` sign for the entire commit
1. Provide a name to the commit in the Message field saving with a `⌘Enter`
1. Clicking on the publish or sync button

You can use the `GitLab Workflow` extension to manage the `Merge Request` (MR) once the branch has been pushed and MR created.


### Remove trailing whitespaces 

CI/CD linting jobs can use checks for trailing whitespaces. When detected, the checks cause the pipeline to fail, and require editing the files again. This can increase time to create and review MRs. The following tips help with removing trailing spaces in detected files faster. 

```
content/handbook/marketing/developer-relations-and-community/_index.md:78:70 MD009/no-trailing-spaces Trailing spaces [Expected: 0 or 2; Actual: 1]
```

An IDE or the command line are common ways to fix the problem. 

1. [Visual Studio Code](https://handbook.gitlab.com/handbook/tools-and-tips/editors-and-ides/visual-studio-code/): Open the file to edit. On macOS, [use the shortcut `cmd k x`](https://code.visualstudio.com/docs/getstarted/keybindings#_rich-languages-editing) to clear trailing whitespaces and [`cmd s` to save the file](https://code.visualstudio.com/docs/getstarted/keybindings#_file-management).
1. [vim](https://handbook.gitlab.com/handbook/tools-and-tips/editors-and-ides/vim/): Change to the command mode (ESC), start a command with `:` and copy the following sequence to clear all trailing whitespaces: `%s/\s\+$//e`. Press enter, and save the file with `:wq`. 

Visual Studio Code provides an editor setting to remove trailing whitespaces permanently. Navigate to `File > Preference > Settings > User > Text Editor > Files > Trim Trailing Whitespace` and check the box to trim whitespaces when files are saved automatically. Please use this setting carefully, because some files contain many whitespaces to fix and can render the Merge Request change diff hard to read. This increases MR review time. It is recommended to remove and fix trailing whitespaces in a separate MR. 

#### Bulk remove trailing whitespaces 

You can replace trailing whitespaces in multiple files on the command line using [GNU sed](/handbook/practical-handbook-edits/#pre-requisites) and [find](/handbook/practical-handbook-edits/#using-a-terminal). The following example recurisvely searches the `content/handbook` directory for files matching the pattern `*.md` and executes a script on each file, which replaces trailing whitespaces inline (`sed -i ...`). 

```shell
find content/handbook -type f -name '*.md' -exec sh -c "sed -i 's/[ \t]*$//' "$1" '{}'" \;
```

#### Remove trailing whitespaces in a merge request

Sometimes the easiest way to fix one - or a few - trailing whitespace lint errors is directly in the merge request. 

1. From the `Changes` tab in the merge request, find the file and line number mentioned in the lint error message
2. Click the speech bubble next to the line number to add a comment
3. In the comment dialog, click the `insert suggestion` button to copy the line into the comment dialog
4. Remove the trailing whitespace from the end of the line
5. Click `Add comment now` and apply the suggestion

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/Kfdf2VAk9sM" frameborder="0" allowfullscreen="true"> </iframe>
</figure>
