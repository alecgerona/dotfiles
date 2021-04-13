# <!--suppress ALL -->
<div align="center">
  <h1>Alec's dotfiles</h1>
  <a href="https://sw.kovidgoyal.net/kitty/"><img src="https://img.shields.io/badge/term-kitty-informational?style=for-the-badge" alt="kitty"></a>
  <a href="https://github.com/zsh-users/zsh"><img src="https://img.shields.io/badge/shell-zsh-informational?style=for-the-badge" alt="zsh"/></a>
  <a href="https://denysdovhan.com/spaceship-prompt/"><img src="https://img.shields.io/badge/prompt-%F0%9F%9A%80%E2%AD%90spaceship-informational?style=for-the-badge" alt="🚀⭐spaceship"></a>
  <a href="https://neovim.io/"><img src="https://img.shields.io/badge/editor-neovim-informational?style=for-the-badge" alt="neovim"/></a>
  <p>Featureful, lean, and easy to install.</p>
</div>

## In a nut*shell*
This repository contains all the dotfiles and config files I or maybe you might need
to easily get started with this workflow. All these is designed to strike a good
balance with usability, features, and intuitiveness. The latter is the most important
as I designed the workflow to be plug and play as much possible.

What exactly does this mean? 

✔️ Move fluidly between your IDE and the terminal. Can't decide which one to use?
No problem, the shortcuts configured are designed to be as similar as possible. 
Exceptions will be noted below.

✔️ Further muddy your decision between IDE and terminal with neovim. This config hooks
neovim up with IDE features such as intellisense, autocomplete, linting, styling, 
and more!


## Installation
This dotfiles' installation is followed from [here](https://www.ackama.com/blog/posts/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained).

⚠️This will overwrite any existing config file you have! Make sure you know what
you're doing!

Basically, it uses `git init --bare` for its magic to have an elegant way for the
config files to remain where they should be while being able to use git methods on
them from anywhere. This avoids having to mess with symlinks.

1. Add our target bare repository to `$HOME/.gitignore` to avoid recursion issues
```sh
echo ".cfg" >> .gitignore
```

2. Clone this repository on a bare git repository
```sh
git clone --bare git@github.com:alecgerona/dotfiles.git $HOME/.cfg
```

And that should be it. Reloading your terminal should make everything take effect.

### Optional:

The default alias for this bare git repository is `git-dotfiles`. Assuming
the configs have loaded, you can set this repository to only track the files
you explicitly add so `git-dotfiles status` won't be messy.
```sh
git-dotfiles config --local status.showUntrackedFiles no
```

To make changes, simply use `git-dotfiles` as you would your regular `git` command.

## Features
Now to the good stuff, let's go one by one on each feature this dotfiles allow you
to do.

### Terminal - kitty

As mentioned above, Kitty is all set up with its theme as [kitty-snazzy](https://github.com/connorholyday/kitty-snazzy).

Kitty can create and handle splits with:
| Command    | Effect                |
|------------|-----------------------|
| Ctrl+alt+s | Horizontal split      |
| Ctrl+alt+v | Vertical split        |
| Ctrl+alt+h | Jump to left window   |
| Ctrl+alt+j | Jump to bottom window |
| Ctrl+alt+k | Jump to above window  |
| Ctrl+alt+l | Jump to right window  |

### Editor - Neovim
The default editor is Neovim and comes bundled with [vim-plug](https://github.com/junegunn/vim-plug)
as its package manager.

Some useful commands:
| Command   | Effect                      |
|-----------|-----------------------------|
| <leader>y | Copy to system clipboard    |
| <leader>p | Paste from system clipboard |
| <leader>w | Save file                   |
| <leader>x | Save and close file         |
| Ctrl+h    | Jump to left vim window     |
| Ctrl+j    | Jump to bottom vim window   |
| Ctrl+k    | Jump to above vim window    |
| Ctrl+l    | Jump to right vim window    |


### Editor - Intellij Idea
In case you were using this, the dotfiles also contain a `.ideavimrc` for the editor's
vim plugin.

Some useful commands: (This extends the above commands from neovim)
| Command   | Effect                      |
|-----------|-----------------------------|
| <leader>y | Copy to system clipboard    |
| <leader>p | Paste from system clipboard |
