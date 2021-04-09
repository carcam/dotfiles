set nocompatible              " be iMproved, required
filetype off                  " required
colorscheme koehler
set hidden
" set gfn=monaco:h15

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
" Plugin 'preservim/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'philrunninger/nerdtree-visual-selection'
Plugin 'alvan/vim-closetag'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'Tagbar'
Plugin 'vim-syntastic/syntastic'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'Yggdroot/indentLine'
Plugin 'luochen1990/rainbow'
Plugin 'neoclide/coc-tabnine'
Plugin 'tpope/vim-eunuch'
"Plugin 'zxqfl/tabnine-vim'
"Plugin 'project.vim'

set encoding=utf8
" Nerdfont for devicons in MAC
set guifont=DroidSansMono_Nerd_Font:h11

" Nerdfont for devicons in Linux
"set guifont=DroidSansMono\ Nerd\ Font\ 11

" Always show Status Bar
set laststatus=2

" Use 256 colours
set t_Co=256

" Generic indent options
set shiftwidth=4
set tabstop=4
set copyindent
set preserveindent

" Use 4 spaces instead of tabs (PSR2)
"set expandtab
"set relativenumber

" Use tabs instead of spaces to indent (Joomla)
set noexpandtab
set softtabstop=0

" Line numbering
set nu!
set rnu!

" Foldmethod Indent
set foldmethod=indent

" Syntax highlight
syntax on
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0

let g:netrw_keepdir=0
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
let g:syntastic_php_phpmd_post_args = 'cleancode,codesize,controversial,design,unusedcode'
"let g:syntastic_php_phpcs_args='--standard=Joomla -n'
"let g:syntastic_quiet_messages = { "regex": ['EXTENSION_NAME', 'text_prefix', 'author tag must be in the form', 'copyright tag must contain a year and the name', 'license tag must contain a url']}

" AutoClose Tab configuration
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.tpl'

" Tab rainbow
let g:rainbow_active = 1

let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

nmap <F8> :TagbarToggle<CR>

" Keep all folds open when a file is opened
augroup OpenAllFoldsOnFileOpen
    autocmd!
       autocmd BufRead * normal zR
       augroup END
