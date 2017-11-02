" Plugins
call plug#begin()
Plug 'bling/vim-airline'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-vividchalk'
Plug 'ekalinin/dockerfile.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'hdima/python-syntax'
Plug 'fatih/vim-go'
Plug 'pearofducks/ansible-vim'
Plug 'saltstack/salt-vim'
call plug#end()

let g:rehash256 = 1           " find out what this does

colorscheme vividchalk        " Set colors.  They're nice.
set background=dark

set tabstop=4                 " Display tabs as four spaces
set softtabstop=4             " Use four spaces for tabs when editing
set expandtab                 " Convert tabs into spaces

" set cursorline                " Highlight the line where the cursor is
set showmatch                 " Match opening and closing parantheses, braces, etc.

filetype indent on            " load filetype-specific indent files
