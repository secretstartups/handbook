---
layout: handbook-page-toc
title: "GitLab with Git Basics Hands-On Guide: Lab 2"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab with Git Basics course."
---
# GitLab with Git Basics Hands-on Guide: Lab 2
{:.no_toc}

## LAB 2: WORKING WITH GIT LOCALLY

*Note: Many of the git commands used in this lab are summarized in GitLab’s helpful [git cheat sheet](
  https://about.gitlab.com/images/press/git-cheat-sheet.pdf).*

### Verify that Git is installed locally

Open a terminal session or shell prompt and type `git version`. If the output prints a version number, Git is installed. If not, consult your instructor on how to install it on your operating system.

### Generate an SSH key

These steps are only needed if you do not have an SSH key already installed.
1. In a terminal or shell prompt, type `ssh-keygen`
1. If prompted for a key type, choose `ed25519`, which is more secure than the older `id_rsa` type.
1. You will be prompted to choose the location in which your key will be saved. Leave it blank to use the default location, and press **Enter**.
1. You may be prompted to create a passphrase. Leave it blank or enter a passphrase of your choice, and then hit **Enter**. If you do use a passphrase, you must enter it every time you push or pull code from GitLab.com.

### Add an SSH key to your GitLab profile

1. In the top right-hand corner of the GitLab page, click the **down arrow** to the right of your avatar.
1. From the dropdown menu, click **Edit profile**.
1. In the left-hand navigation pane, click **SSH Keys**.
1. If you have no SSH keys added to your profile, you will land on the **Add an SSH Key** screen.
1. Return to your terminal/shell session. To retrieve the SSH key you created, move into the folder you saved it to by typing `cd .ssh`
1. Type `ls -al` to see two key files: a public key and a private key. The public key ends with `.pub` and is what you need to share with GitLab.
1. Type `cat <PUBLIC-KEY-FILE>` (for example, `cat id_rsa.pub`) to print the contents of your public key. Copy the printed output to your clipboard.
1. Return to the GitLab app in your browser. Paste the public key contents into the `Key` field, enter any title you want in the `Title` field, and click **Add key**.
1. Test your SSH key configuration by running `ssh -T git@ilt.gitlabtraining.cloud`. Answer `yes` if it asks if you're sure you want to continue connecting. If the command completes with a welcome message, your computer is configured to interact with the training instance of GitLab.

### Clone a project repository to your local machine

1. Use the top navigation bar to get back to your **Project Overview** by clicking **Menu > Projects > Your projects > Top Level Project**.
1. Click **Clone**. In the **Clone with SSH** section, click the **Copy URL** icon.
1. In your terminal/command window, type `cd` then **Enter** to get out of the `.ssh` directory and into your home directory.
1. Type `mkdir training` to create a new directory called **training**.
1. Type `cd training` to move into your new directory.
1. Type `git clone <URL-YOU-COPIED>` to copy the Git repository from your **Top Level Project** onto your local machine.
1. Move into the repository you just cloned by typing `cd top-level-project`. All files in this directory will be tracked by Git, and any Git commands you run in this lab should be run from this directory.
1. Type `ls -a` to see a list of files in the directory, including hidden files beginning with `.`
1. Type `git status` and inspect the output. You will see `nothing to commit`, which means the files in this directory have the same contents as the versions of these files that are stored in Git.

### Work on a branch

1. Type `git checkout -b temporary_branch` to create and then switch to a new branch called **temporary_branch** on your local computer.
1. Type `git branch -a` to see all branches. The red branches are on the remote server, which is the GitLab instance in your training environment. The asterisk indicates the branch you are currently on.

### Edit a file

1. Using any text editor (Visual Studio Code, Sublime Text, notepad, vi, etc.), add a new line `a line added to temporary_branch locally` at the end of `README.md`. Save the file.
1. Type `git status` to see if Git has noticed that the file has been modified.

    Note: Git has detected that you have edited a file in your local repo, but since you have not created a commit with that file yet, Git has not yet stored those edits in a snapshot.

### Add `README.md` to the local Git staging area

1. Type `git add README.md`. If successful, there is no output. The `add` command doesn't move `README.md` on your filesystem, but it does add it to what Git calls a "staging area".
1. Type `git status` to see that `README.md` is now ready to be committed (that is, it has been successfully staged).

### Commit the changes to `README.md`

1. Type `git commit -m "added a line to README.md"` You have now created a snapshot of the file that you can refer back to if needed.<br/>
 **Tip:** You can stage and commit a change at the same time by using the `git commit -am "<COMMIT MESSAGE>"` command to save time.
1. Type `git status` to see that the staging area is empty again, following the commit.

### Push your changes to **temporary_branch** on the remote Git repository on the GitLab instance

1. Type `git push -u origin temporary_branch`<br/>Enter the passcode for your SSH key if prompted. This creates a new branch in the remote Git repository on the GitLab server called **temporary_branch**, and pushes your changes to that branch.<br/>
**Tip:** If you are ever unsure of the exact command to push your changes to the remote server, type `git push` and Git will output an error message with the correct command for you to copy and paste.

### Edit, commit, and push the file again

1. In your local machine's text editor (not GitLab's in-browser editor), add a new line to your local copy of `README.md` that says `add a third line to file` and save the file.
1. In your terminal/command window, type `git add README.md` to move the edited file to Git's staging area.
1. Type `git commit -m "modified README.md"` to commit the file that was in the staging area.
1. Type `git log` to see a description of the commit you just made.
1. Type `git push` to copy the edited `README.md` to the remote repository on the GitLab instance.<br/>
**Tip:** To commit your changes to the upstream branch (that is, the branch on the remote repository with the same name as the branch on your local machine), simply type `git push` instead of the longer command you used the first time you pushed your commit up to the GitLab instance. The system only needs to set the upstream branch once.
1. Navigate to your project in the GitLab webapp. In the left-hand navigation pane, click **Repository > Branches** and click on **temporary_branch** to switch to that branch. Confirm that your local changes to `README.md` were pushed up to that branch in the remote repository on the GitLab instance.

### Simulate a change on the remote **temporary_branch**

In this section, let's simulate someone else in your organization making a change to the **temporary_branch** that lives in the remote repository on the GitLab instance. When we're done with this section, the remote and local versions of **temporary_branch** will be different: the code on that branch will have moved under your feet (so to speak)! In the section that follows this one, we'll see how to reconcile this difference.

1. In GitLab, navigate to the **Top Level Project** landing page. If you're not already on **temporary_branch**, then go to the left-hand navigation pane and click **Repository > Branches > temporary_branch**.
1. You are now looking at files in **temporary_branch**. Click **README.md**.
1. Click **Web IDE**.
1. In the Web IDE screen, add a new line to the end of the file: `add a fourth line from the remote copy of temporary_branch`
1. Click **Commit...**
1. Check the radio button for **Commit to temporary_branch** and uncheck **Start a new merge request**.
1. Click **Commit** to finalize the changes on the remote repository's version of **temporary_branch**. Since you made this change in GitLab webapp, the remote repository on the GitLab instance is now one commit ahead of your local repository.

### Refresh your local branch with `git fetch`

Since your local **temporary_branch** is out of sync with the remote **temporary_branch** on the GitLab instance, you must update your local copy of that branch to incorporate the changes from the remote copy.

The `git fetch` command retrieves the updated state of remote branches without updating the contents of your local branches. In other words, it tells you how many commits your local branches are behind the remote branches, but it won't make any changes to your local branches.

1. Return to your terminal/command window and type `git fetch`. Enter your SSH passphrase if prompted.
1. Type `git status` to find out how many commits have been made to the remote branch that need to be pulled down into your local branch.

### Pull from the remote (upstream) repository

You need to tell Git to update the contents of your local **temporary_branch** by merging in changes from the GitLab instance's **temporary_branch**.
1. In your terminal/command window, type `git pull` and check the output to see how many files it updated locally.
1. Type `cat README.md` to view the updated contents of the file. You should see the fourth line that you added in the GitLab.com Web IDE.

### Merge all changes from **temporary_branch** into the **main** branch

Now that your local **temporary_branch** is identical to the remote **temporary_branch**, you can merge it into your local **main** branch, so your edits become part of the stable codebase that lives in **main**.

1. In your terminal/command window, type `git branch` to verify which branch you are currently working on. You will probably be on **temporary_branch**.
1. Switch to your **main** branch by typing `git checkout main`
1. Type `git merge temporary_branch` to incorporate all changes from your local **temporary_branch** (in this case, just the modified `README.md`) into your local **main** branch.

### Update the remote repository

1. In your terminal/command window, type `git status` to see that there are no edited files that you need to stage or commit and to confirm that you are on the **main** branch.
1. Type `git push` to update the remote copy of **main** branch with any changes from your local copy.
1. Return to the GitLab page in your browser and view `README.md` in your project's **main** branch to view the changes you just pushed to the remote copy of `main`.

## Suggestions?

If you'd like to suggest changes to the *GitLab with Git Basics Hands-on Guide*, please submit them via merge request.
