---
layout: handbook-page-toc
title: "Text Editors"
---

# Text Editors

We encourage everyone to use the right tools for the job, and since everyone here does a lot of writing, using the
correct editor for you is really important. Developers will have more specialized needs, but everyone at GitLab needs
to write Markdown, and the best text editors make this much easier.

A good editor will have:

- syntax highlighting, showing structure as well as content
- plugins to enable customization (such as spell-checking)
- integration with `git`, enabling managing commits and branches from within the editor
- the ability to open very large files efficiently
- not require a persistent internet connection

Many editors are free to use, some require paid licenses to unlock all features.
GitLab team members can expense the cost of their tools, and in some cases we
have licenses we can hand out (for example for [RubyMine](#rubymine)).

There are many, many good text editors. Some of them are listed below:

## Sublime Text

Website: https://www.sublimetext.com/

Best for: entry level developers, editing markdown.

Strengths:

- simple interface
- cross-platform
- many extensions, including one for integration with GitLab (`GitlabIntegrate`).
- powerful visual git-client integrated (`sublime-merge`)

A powerful text editor, sublime text is an excellent choice for editing plain text documents, but scales
up to full code-editing. Installing extensions is simple.

## Visual Studio Code (vscode)

Website: https://code.visualstudio.com/

Best for: code editing, GitLab integration

Strengths:

- Extremely popular
- Vast number of extensions, including an [official GitLab extension](https://marketplace.visualstudio.com/items?itemName=gitlab.gitlab-workflow)
- Language server protocol (LSP) was designed for vscode

A powerful editor, suitable for all kinds of editing, with a shallow learning curve. The LSP system was
designed for vscode, so vscode has excellent support for this transformational technology.

## vim/neovim

Website: https://www.vim.org/

Best for: code editing in the terminal

Strengths:

- Extremely configurable
- Keyboard orientated
- Efficient modal editing
- Plugins for all code editing tasks
- Great git integration ([`fugitive`](https://github.com/tpope/vim-fugitive))
- Spell-check built-in by default

An extremely powerful advanced editor, with a steep learning curve. While many users swear by this program,
it can be a challenge to get used to modal editing (or to unlearn it when you have).

## emacs

Website: https://www.gnu.org/software/emacs/

Best for: literally everything

Strengths:

- Infinitely customizable
- Best in class plugins and extensions (many ideas start in emacs, and disseminate outwards)
- [org mode](https://orgmode.org/)
- Great git integration ([`magit`](https://magit.vc/))
- built-in email client

So powerful it is almost comparable to an operating system, emacs is an extremely powerful text editor that
can be customized in code.

## RubyMine

Website: https://www.jetbrains.com/ruby/

Best for: editing Ruby code

Strengths:

- Code completion
- Easy refactoring
- Powerful navigation tools
- integrated git client
- testing and debugging

Designed specifically for Ruby/Rails, but it also supports other languages and
file formats. It's an integrated development environment that also helps with
testing and debugging.

You can evaluate RubyMine for free. If you like it, you can [request a license](/handbook/tools-and-tips/other-apps/#jetbrains)
