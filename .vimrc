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
Plug 'elzr/vim-json"
call plug#end()

let g:rehash256 = 1           " find out what this does

colorscheme vividchalk        " Set colors.  They're nice.
set background=dark

set tabstop=2                 " Display tabs as two spaces
set softtabstop=2             " Use two spaces for tabs when editing
set shiftwidth=2              " two space indent
set expandtab                 " Convert tabs into spaces

"set cursorline                " Highlight the line where the cursor is
set showmatch                 " Match opening and closing parantheses, braces, etc.

filetype plugin indent on     " load filetype-specific indent files
