
" disable backup which is enabled in vimrc_example.vim
set nobackup

" no undofiles
set noundofile

let &termencoding = &encoding
set encoding=utf-8

" minpac configurations 

packadd minpac

" use '$VIM/vimfiles' as the default directory
call minpac#init({'dir': expand('$VIM/vimfiles')})

" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
call minpac#add('k-takata/minpac', {'type': 'opt'})

" add the office colorscheme, you can find more colorschemes at
" http://vimcolors.com/
call minpac#add('nightsense/office')

call minpac#add('tpope/vim-fugitive')
call minpac#add('vim-airline/vim-airline')


