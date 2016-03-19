vimperator.vim
==============

Official Vimperator syntax highlighting file.

Split out from
[vimperator/vimperator-labs](https://github.com/vimperator/vimperator-labs/tree/48728a0947324fb7facb89e259e7db7f5cd6d612/vimperator/contrib/vim).

Installation
------------

### Manual:

Place `ftdetect` and `syntax` in `$HOME/.vim` or equivalent.

### [Vundle](https://github.com/gmarik/vundle):

Add to `$MYVIMRC`, e.g. `$HOME/.vimrc`:

    Plugin 'vimperator/vimperator.vim'

Install using `:PluginInstall`.

### [Pathogen](https://github.com/tpope/vim-pathogen):

Add as a bundle:

    $ cd ~/.vim/bundle
    $ git clone https://github.com/vimperator/vimperator.vim.git

Ensure `pathogen#infect()` is present in `$MYVIMRC`.

Usage
-----

Common Vimperator files will be detected automatically. 

For anything else, use a modeline, i.e. `vim: ft=vimperator` as a comment.
