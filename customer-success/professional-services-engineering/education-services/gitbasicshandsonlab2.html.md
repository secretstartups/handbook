---
layout: handbook-page-toc
title: "GitLab with Git Basics Hands-On Guide: Lab 2"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab with Git Basics course."
---
# GitLab with Git Basics Hands-on Guide: Lab 2
{:.no_toc}

## LAB 2: WORK WITH GIT LOCALLY

*Note: Many of the git commands used in this lab are summarized in GitLab’s helpful [git cheat sheet](
  https://about.gitlab.com/images/press/git-cheat-sheet.pdf).*

### Verify that Git is installed locally

Open a terminal session or shell prompt and type `git version`. If the output prints a version number, Git is installed. If not, consult your instructor on how to install it on your operating system.

### Generate an SSH key

These steps are only needed if you do not have an SSH key already installed.
1. In a terminal or shell prompt, type `ssh-keygen`
1. When prompted, hit <kbd>Enter</kbd> to accept the default key location.
1. When prompted, hit <kbd>Enter</kbd> to use a blank passphrase.

### Add an SSH key to your GitLab profile

1. In the top right-hand corner where your avatar resides, click the **down arrow** to the right.
2. From the dropdown menu, click **Edit profile**.
3. In the left-hand navigation pane, click **SSH Keys**.
4. Return to your terminal/shell session. Navigate to the folder that you saved the ssh key in: `cd .ssh`
5. Type `ls -al` to see two key files: a public key and a private key. The public key ends with `.pub` and is what you need to share with GitLab.
6. Type `cat <PUBLIC-KEY-FILE>` (for example, `cat id_rsa.pub`) to print the contents of your public key. Copy the output to your clipboard.
7. Return to the GitLab app in your browser. Paste the public key contents into the **Key** field, enter any title you want in the **Title** field, and click **Add key**.
8. Run **one** of these commands, depending on what kind of course you’re taking. If the command completes with a welcome message, your SSH key is set up correctly.
    + Instructor-led course: `ssh -T git@ilt.gitlabtraining.cloud`
    + Self-paced course: `ssh -T git@spt.gitlabtraining.cloud` 

### Clone a project repository to your local machine

1. Use the top navigation bar to get back to your **Project Overview** by clicking **Menu > Projects > Your projects > Top Level Project**.
1. Click **Clone**. In the **Clone with SSH** section, click the **Copy URL** icon.
1. In your terminal, type `cd` then **Enter** to get out of the `.ssh` directory and into your home directory.
1. Type `mkdir training` to create a new directory called **training**.
1. Type `cd training` to move into your new directory.
1. Type `git clone <URL-YOU-COPIED>` to copy the Git repository from the remote **Top Level Project** onto your local machine.
1. Move into the repository you just cloned by typing `cd top-level-project`. All files in this directory will be tracked by Git, and any Git commands you run in this lab should be run from this directory.
1. Type `ls -a` to see a list of files in the directory, including hidden files and directories beginning with a period. Notice the presence of the `.git` directory, which turns this directory into a Git repository.
1. Type `git status` and inspect the output. You will see `nothing to commit`, which means the files in this directory have the same contents as the versions of these files that are stored in Git.

### Work on a branch

1. Type `git branch temporary_branch` to create a new branch called **temporary_branch** on your computer.
2. Type `git checkout temporary_branch` to switch to the branch you just created.
3. Type `git branch -a` to see all branches. The red branches are on the remote server, which is the GitLab instance in your training environment. The asterisk indicates the branch you are currently on.

### Edit a file

1. Using any text editor (Visual Studio Code, Sublime Text, notepad, vi, etc.), add this line to the end of `README.md` and save the file:

    ```
    a line added to temporary_branch locally
    ``` 
2. Type `git status` to see if Git has noticed that the file has been modified.

    Note: Git has detected that you have edited a file in your local repo, but since you have not created a commit with that file yet, Git has not stored those edits in a snapshot.

### Add `README.md` to the Git staging area

1. Type `git add README.md`. If successful, there is no output. The `add` command doesn’t move `README.md` on your filesystem, but it does add it Git’s “staging area”.
1. Type `git status` to see that `README.md` is now ready to be committed (that is, it has been successfully staged).

### Commit the changes to `README.md`

1. Type `git commit -m "added a line to README.md"` You have now created a snapshot of the file that you can refer back to if needed.
1. Type `git status` to see that the staging area is empty again.

### Push your changes to **temporary_branch** on the remote Git repository on the GitLab instance

1. Type `git push -u origin temporary_branch`<br/>This creates a new branch in the remote Git repository on the GitLab server called **temporary_branch**, and pushes your changes to that branch.<br/>
**Tip:** If you are ever unsure of the exact command to push your changes to the remote server, type `git push` and Git will output an error message with the correct command for you to copy and paste.

### Edit, commit, and push the file again

1. In your local machine’s text editor (not GitLab’s in-browser editor), add this new line to the end of your local copy of `README.md` and save the file:

    ```
    a third line in README.md
    ```
3. In your terminal, type `git add README.md` to move the edited file to Git’s staging area.
4. Type `git commit -m "modified README.md"` to commit the file that was in the staging area.
5. Type `git log` to see a description of the commit you just made.
6. Type `git push` to copy the edited `README.md` to the remote repository on the GitLab instance.<br/>
**Tip:** To commit your changes to the upstream branch (that is, the branch on the remote repository with the same name as the branch on your local machine), type `git push` instead of the longer command you used the first time you pushed your commit up to the GitLab instance. The system only needs to set the upstream branch once.
7. Navigate to your project in the GitLab app. In the left-hand navigation pane, click **Repository > Branches** and select **temporary_branch** to switch to that branch. Confirm that your local changes to `README.md` were pushed up to that branch in the remote repository on the GitLab instance.

### Simulate a change on the remote **temporary_branch**

Let’s simulate someone else in your organization making a change to the **temporary_branch** that lives in the remote repository on the GitLab instance. When we’re done with this section, the remote and local versions of **temporary_branch** will be different: the code on that branch will have moved under your feet (so to speak). In the section after this one, we’ll see how to reconcile this difference.

1. In GitLab, navigate to the **Top Level Project** landing page. If you’re not already on **temporary_branch**, go to the left-hand navigation pane and click **Repository > Branches > temporary_branch**.
2. You are now looking at files in **temporary_branch**. Click **README.md**.
3. Click **Web IDE**.
4. In the Web IDE screen, add a new line to the end of the file:

    ```
    a fourth line added to the remote copy of temporary_branch
    ```
5. Click **Commit...**
6. Check the radio button for **Commit to temporary_branch** and uncheck **Start a new merge request**.
7. Click **Commit** to finalize the changes on the remote repository’s version of **temporary_branch**. Since you made this change in GitLab webapp, the remote repository on the GitLab instance is now one commit ahead of your local repository.

### Get metadata about changes to the remote **temporary_branch**

Your local **temporary_branch** is out of sync with the remote **temporary_branch** on the GitLab instance. The `git fetch` command gets the updated state of remote branches without updating the contents of your local branches. In other words, it tells you how many commits your local branches are behind the remote branches, but it doesn’t make any changes to the files in your local branches.

1. In your terminal type `git fetch`
1. Type `git status` to find out how many commits have been made to the remote copy of **temporary_branch**, that are not also in your local copy of that branch.

### Pull from the remote (upstream) repository

You need to tell Git to update the contents of your local **temporary_branch** by merging in changes from the remote copy of **temporary_branch**.
1. In your terminal, type `git pull` and check the output to see how many files it updated locally.
1. Type `cat README.md` to view the updated contents of the file. You should see the fourth line that you added in the GitLab Web IDE.

### Merge changes from **temporary_branch** into the **main** branch

Now that your local **temporary_branch** is identical to the remote **temporary_branch**, you can merge it into your local **main** branch, so your edits become part of the stable codebase that lives in **main**.

1. In your terminal, type `git branch` to verify which branch you are currently working on. You will probably be on **temporary_branch**.
1. Switch to your **main** branch by typing `git checkout main`
1. Type `git merge temporary_branch` to incorporate all changes from your local **temporary_branch** (in this case, just the modified `README.md`) into your local **main** branch.

### Update the remote repository

1. In your terminal, type `git status` to see that there are no edited files that you need to stage or commit and to confirm that you are on the **main** branch.
1. Type `git push` to update the remote copy of **main** branch with any changes from your local copy.
1. Return to the GitLab page in your browser and view `README.md` in your project’s **main** branch to view the changes you just pushed to the remote copy of **main**.

## Suggestions?

If you’d like to suggest changes to the *GitLab with Git Basics Hands-on Guide*, please submit them via merge request.
