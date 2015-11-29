filetype plugin on
filetype indent on
filetype off

set autoread

" straight vim, no vi compatibility
set nocompatible
" 256 colors
set t_Co=256
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'mxw/vim-jsx'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'kchmck/vim-coffee-script'
call vundle#end()            " required
filetype plugin indent on    " required

let g:EditorConfig_exclude_patterns = ['fugitive://.*']

let g:jsx_ext_required = 0 " Allow JSX in normal JS files

set wildignore+=*.a,*.o
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
set wildignore+=.DS_Store,.git,.hg,.svn
set wildignore+=*~,*.swp,*.tmp
set wildmenu
set wildmode=longest,list
set backspace=2
set list
set listchars=tab:▸\ ,trail:.,eol:¬

set vb
set noeb

set vi=%,'50
set vi+=\"100,:100
set vi+=n~/.viminfo

" Syntax highlighting

syntax on
set encoding=utf8
set ffs=unix,dos,mac

set number

set smarttab
set lbr
set tw=500
set expandtab

set ai
set si
set wrap

" Syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_php_phpcs_args="--report=csv --standard=/Users/jared/Documents/code/flagship-cutter/super_powers/flagship/code-standards/BTPHP/ruleset.xml"

" Color scheme

colo Tomorrow-Night

" Always show status bar

set laststatus=2

" Airline settings

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

function! HasPaste()
        if &paste
                    return 'PASTE MODE  '
                        en
                            return ''
                        endfunction

set noshowmode

map <C-n> :NERDTreeToggle<CR>
