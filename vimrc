
try 
	source $VIM/_vimrc
catch /^Vim\%((\a\+)\)\=:E484/
	" in case $VIM/_vimrc not found
	source $VIMRUNTIME/vimrc_example.vim
endtry

" disable backup which is enabled in vimrc_example.vim
set nobackup

" no undofiles
set noundofile

let &termencoding = &encoding
set encoding=utf-8

