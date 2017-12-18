set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'wincent/command-t'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'samsonw/vim-task'

call vundle#end()
filetype plugin indent on

"No mouse please"
set mouse=""

set cursorline
hi CursorLine gui=underline cterm=underline
