---
layout: handbook-page-toc
title: "GitLab with Git Basics Hands-On Guide: Lab 2"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab with Git Basics course."
---
# GitLab with Git Basics Hands-on Guide: Lab 2
{:.no_toc}


## LAB 2: WORK WITH GIT LOCALLY

*Note: Many of the Git commands used in this lab are summarized in GitLab’s helpful [git cheat sheet](
  https://about.gitlab.com/images/press/git-cheat-sheet.pdf).*

In this lab you will practice cloning a repository; creating, using, and merging a branch; editing and committing a file; and pushing and pulling changes to and from a remote repository.


### A. Verify that Git is installed locally

1. Open a terminal (if you're on Linux or macOS) or PowerShell (if you're on Windows) and type this command:
   ```bash
   git version
   ```
   If the output prints a version number, Git is installed. If not, consult your instructor for instructions on how to install it on your computer.


### B. Generate an SSH key

1. Check if you have an existing SSH key by running one of these commands in your Linux/macOS terminal or PowerShell prompt. It will display all the files in your `.ssh` directory.
   * Linux or macOS:
     ```bash
     ls -a ~/.ssh
     ```
   * Windows:
     ```powershell
     dir ~\.ssh
     ```

   If that command lists a file called `id_rsa`, you have an SSH key already and can skip to the next section.

1. Create a public and private key pair by running this command in your terminal or PowerShell.
   ```bash
   ssh-keygen
   ```
1. When prompted, hit <kbd>Enter</kbd> to accept the default key location.
1. When prompted, hit <kbd>Enter</kbd> to use a blank passphrase.


### C. Add an SSH key to your GitLab profile

1. Back in GitLab, in the top right-hand corner, select the **down arrow** to the right of your avatar.
1. From the dropdown menu, select **Edit profile**.
1. In the left-hand navigation pane, select **SSH Keys**.
1. Return to your terminal or PowerShell. Navigate to the directory that you saved the SSH key in and print a list of all files in that directory.
   ```bash
   cd ~/.ssh
   ls
   ```
   You should see two key files: a public key and a private key. The public key ends with `.pub` and is what you need to share with GitLab.
1. Display the contents of your public key.
   ```bash
   cat id_rsa.pub
   ```
1. Copy the contents of `id_rsa.pub` to your clipboard.
1. Back in the GitLab app, paste the public key contents into the **Key** field, enter any title you want in the **Title** field, and select **Add key**.
1. In the terminal or PowerShell run **one** of these commands, depending on what kind of course you’re taking. If the command completes with a welcome message instead of an error, your SSH key is set up correctly.
   * Instructor-led course: 
     ```bash
     ssh -T git@ilt.gitlabtraining.cloud
     ```
   * Self-paced course:
     ```bash
     ssh -T git@spt.gitlabtraining.cloud
     ```

### D. Clone a GitLab project repository to your local computer

1. Use the top navigation bar to get back to your **Project Overview** by selecting **Menu > Projects > Your projects > Top Level Project**.
1. Select **Clone**. In the **Clone with SSH** section, select the **Copy URL** icon.
1. In your terminal or PowerShell, create a new directory called **training** in your home directory, and navigate into it.
   ```bash
   mkdir ~/training
   cd ~/training
   ```
1. Copy the remote **Top Level Project** Git repository to your local computer.
   ```bash
   git clone <REPOSITORY-URL-YOU-COPIED>
   ```
1. Move into the repository you just cloned. All files in this directory will be tracked by Git, and any Git commands you run in this lab should be run from this directory.
   ```bash
   cd top-level-project
   ```
1. Show the contents of the directory, including hidden files and directories beginning with a period. Notice the presence of the `.git` directory, which turns this directory into a Git repository.
   * Linux or macOS:
     ```bash
     ls -a
     ```
   * Windows:
     ```powershell
     ls -Force
     ```
1. Find out the directory contains any edited files that have not yet been committed to the repository:
   ```bash
   git status
   ```
   You'll see `nothing to commit` in the output, which means the files in this directory have the same contents as the versions of these files that are stored in Git.


### E. Work on a branch

1. Create a new branch called **temporary_branch** on your computer.
   ```bash
   git branch temporary_branch
   ```
1. Switch to the branch you just created.
   ```bash
   git checkout temporary_branch
   ```
1. List all the branches in the repository. 
   ```bash
   git branch -a
   ```
   The red branches are on the remote server, which is the GitLab instance in your training environment. The asterisk indicates the branch you are currently on.


### F. Edit a file

1. Using any text editor (Visual Studio Code, Sublime Text, notepad, vi, etc.), add this line to the end of `README.md` and save the file.
   ```
   a line added to temporary_branch locally
   ``` 
1. See if Git has noticed that the file has been modified.
    ```bash
   git status 
   ```

   The output shows that Git has detected that you have edited a file in your local repo, but since you have not *committed* that file, Git has not yet stored that change in a snapshot.


### G. Add the edited file to Git's staging area

1. Add the file to the staging area. If the command is successful, there will be no output.
   ```bash
   git add README.md
   ```
   Remember that `git add` doesn’t move `README.md` on your filesystem, but it does add it to Git’s "staging area."
1. Make sure that `README.md` is now ready to be committed (that is, it has been successfully staged).
   ```bash
   git status
   ```


### H. Commit the edit

1. Commit the staged file.
   ```bash
   git commit -m "Add a line to README.md"
   ```
   You have now created a snapshot of the file that you can refer to later, if needed.
1. Make sure the staging area is empty again.
   ```bash
   git status
   ```


### I. Push your changes to the GitLab instance

1. Create a new branch in the remote Git repository on the GitLab server called **temporary_branch**, and push your changes to that branch.
   ```bash
   git push -u origin temporary_branch
   ```
   If you're ever unsure of the exact command to push your changes to the remote server, type `git push` and Git will output an error message with the correct command for you to copy and paste.


### J. Edit, commit, and push the file again

1. In your local machine’s text editor (not GitLab’s in-browser editor), add this new line to the end of your local copy of `README.md` and save the file.
   ```
   a third line in README.md
   ```
1. In your terminal, move the edited file to Git’s staging area.
   ```bash
   git add README.md 
   ```
1. Commit the staged file.
   ```bash
   git commit -m "Modify README.md"
   ``` 
1. See a description of the commit you just made.
   ```bash
   git log 
   ```
1. Push your commit up to the remote repository on the GitLab instance.
   ```bash
   git push
   ```
   To commit your changes to the upstream branch (that is, an already-existing branch on the remote repository with the same name as the branch on your local machine), you can just run `git push` instead of the longer command you used the first time you pushed your commit up to the GitLab instance. The system only needs to set the upstream branch once.

1. Navigate to your project in the GitLab app. Once you're on the project's main page, go to the left-hand navigation pane, select **Repository > Branches**, and select **temporary_branch** to switch to that branch. Confirm that the changes you made to `README.md` on your local branch were pushed up to the remote repository.


### K. Edit a remote branch

Let’s simulate someone else in your organization making a change to the **temporary_branch** that lives in the remote repository on the GitLab instance. When we’re done with this section, the remote and local versions of **temporary_branch** will be different: the code on that branch will have moved under your feet (so to speak). In the section after this one, we’ll see how to reconcile this difference.

1. In GitLab, navigate to the **Top Level Project** landing page. If you’re not already on **temporary_branch**, go to the left-hand navigation pane and select **Repository > Branches > temporary_branch**.
1. You are now looking at files in **temporary_branch**. Select **README.md** to see its contents.
1. Select **Web IDE** to edit the file.
1. In the Web IDE screen, add a new line to the end of the file.
   ```
   a fourth line added on the remote copy of temporary_branch
   ```
1. Select **Commit...**
1. Normally every branch that you commit to needs an associated merge request, but for this lab you don't need one. Check the radio button for **Commit to temporary_branch** and uncheck **Start a new merge request**.
1. Select **Commit** to finalize the changes on the remote repository’s **temporary_branch**. Since you made this change in GitLab webapp, the remote repository on the GitLab instance is now one commit *ahead* of your local repository.


### L. Get metadata about changes to the remote **temporary_branch**

Your local **temporary_branch** is out of sync with the remote **temporary_branch** on the GitLab instance. The `git fetch` command gets the updated state of remote branches without updating the contents of your local branches. In other words, it tells you how many commits your local branches are behind the remote branches, but it doesn’t make any changes to the files in your local branches.

1. Retrieve metadata about branches on the remote copy of the repository.
   ```bash
   git fetch
   ```
1. Find out how many commits are in the remote copy of the repository but not your local copy, or vice versa.
   ```bash
   git status
   ```


### M. Pull from the remote repository

You need to update the contents of your local copy of **temporary_branch** by merging in changes from the remote copy of **temporary_branch**.
1. In your terminal, merge the remote copy into your local copy.
   ```bash
   git pull
   ```
   Check the output to see how many files Git updated locally.
1. View the updated contents of the file. You should see the fourth line that you added in the GitLab Web IDE.
   ```bash
   cat README.md
   ```


### N. Merge changes back into the **main** branch

Now that your local **temporary_branch** is identical to the remote **temporary_branch**, you can merge it into your local **main** branch. This will add your edits to the stable codebase that lives in **main**.

1. See what branch you are currently working on.
   ```bash
   git branch
   ```
1. Switch to the **main** branch.
   ```bash
   git checkout main
   ```
1. Incorporate all changes from your local **temporary_branch** (in this case, just the modified `README.md`) into your local **main** branch.
   ```bash
   git merge temporary_branch
   ```


### O. Update the remote repository

1. Make sure there are no edited files that you need to stage or commit and to confirm that you are on the **main** branch.
   ```bash
   git status
   ```
1. Update the remote copy of the **main** branch with any changes from your local copy.
   ```bash
   git push
   ```
1. Return to the GitLab page in your browser and view `README.md` in your project’s **main** branch to view the changes you just pushed to the remote copy of **main**.


## Suggestions?

If you’d like to suggest changes to the *GitLab with Git Basics Hands-on Guide*, please submit them via merge request.
