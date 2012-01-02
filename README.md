Dot Files
=========

1. Bash
2. Vim
3. Screen

Bash
----

### Setup: ###

`$ ln -s dotfiles/bashrc-debian6 .bashrc`

`$ ln -s dotfiles/bashrc .bashrc_aliases`

- Debian has a comprehensive default .bashrc sourced as the primary .bashrc
- Custom settings are in `bashrc` and included by the debian bash rc via `.bashrc_aliases`

Vim
---

### Setup: ###

`$ ln -s dotfiles/vimrc .vimrc`

`$ ln -s dotfiles/vim .vim`

1. Bundles configured with Pathogen
2. Bundles included as sub modules; use git clone --recursive to get them all

### Bundles, Plugins, etc. ###
1. jslint.vim
2. nerdcommenter
3. nerdtree
4. solarized
5. supertab
6. tagbar
7. vim-colorschemes
8. vim-yui3

Screen
------

### Setup: ###

`$ ln -s dotfiles/screenrc .screenrc`

- Fix Backspace, Delete ^H issue
