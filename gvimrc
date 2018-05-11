
" set the font to Windows Consolas
set guifont=Consolas:h10

" hide toolbar
set guioptions-=T

" turn off cursor blinking in normal mode
set guicursor+=n:blinkon0

" turn off all bells
set belloff=all
set novisualbell

" do not distinguish between unnamed register and "* register
set clipboard+=unnamed

" the following confgiuration disables input method at normal mode 
set iminsert=2
set imsearch=-1

autocmd InsertEnter * set noimdisable
autocmd InsertLeave,CmdlineLeave * set imdisable

" since 'autocmd CmdlineEnter * set noimdisable' doesn't work
" we have to map '/' to enable im
nnoremap / <ESC>:set noimd<CR>/

" source the default configuration for windows
source $VIMRUNTIME/mswin.vim

" cancel some mappings set in mswin.vim
iunmap <C-Y>
cunmap <C-F>
nunmap <C-F>
