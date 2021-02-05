"Tells git not to worry about being compatible with vi
set nocompatible

"Adds line numbers
set number

"Shows current command while typing 
set showcmd

"Tells vim to wrap at the end of a line not in the middle of a word
set linebreak

"For python to standardize with pep-8 tabs
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

"Adds syntax highlighting
syntax on

"Allows plugins to load properly
filetype plugin on

"Adds the solarized dark colorscheme
"Download the soloarized colorscheme from git
"git clone https://github.com/altercation/vim-colors-solarized.git
"while in your home directory make this directory 'mkdir .vim/colors/'
"Copy the vim colorscheme to this folder
set t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

"To update vimrc for all users append these commands to the end of /etc/vimrc
"To update for root add symbolic links with 'ln -s' from root's home to this
"file and to the color folder
