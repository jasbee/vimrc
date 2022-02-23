"Steps to install on linux:
"1)In your home dir `https://github.com/jasbee/vimrc.git`
"2)`ln -s vimrc/.vimrc .vimrc`
"3)Start vim

"To update vimrc for all users append these commands to the end of /etc/vimrc
"To update for root add symbolic links with 'ln -s' from root's home to this
"file and to the color folder


"Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

"Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif


"Add new plugins to this block to auto install/load them into vim
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'
call plug#end()

"Adding in keymaps
"-----------------
"Allows for ctrl + q to open NERDTree
nmap <C-q> :NERDTreeToggle<CR>


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


"Uncomment to adds syntax highlighting. Handeled by vim-plug by default.
"syntax on


"Allows plugins to load properly
filetype plugin on


"Adds the solarized dark colorscheme, uncomment the following items if you
"don't like the default colors of your terminal. May need to restart vim to get working.

"set t_Co=256
"let g:solarized_termcolors=256
"set background=dark
"colorscheme solarized
