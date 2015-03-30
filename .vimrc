"------------------------- Vundle ------------------------------------------
set nocompatible " be iMproved, required
filetype off " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)


" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
"Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
"Plugin 'Raimondi/delimitMate'
Plugin 'jiangmiao/auto-pairs'
Plugin 'neilagabriel/vim-geeknote'

" Run NERDTreeTabs on console vim startup
let g:nerdtree_tabs_open_on_console_startup=1

" Set the format when saving notes to Geeknote
let g:GeeknoteFormat="markdown"

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" When type UltisnipsEdit, the file will be saved into this dir
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
" Where UltiSnips find the snip files, the value should be runtimepath
"let g:UltiSnipsSnippetDirectories = ['UltiSnips']


filetype plugin indent on " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList - list configured plugins
" :PluginInstall(!) - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!) - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line

"------------------------- Vundle -----------------------------------------


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
syntax on
set mouse=a                 " Automatically enable mouse usage
set mousehide               " Hide the mouse cursor while typing
scriptencoding utf-8
set encoding=utf8
set shortmess+=filmnrxoOtT          " Abbrev. of messages (avoids 'hit enter')
set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
set virtualedit=onemore             " Allow for cursor beyond last character
set history=1000                    " Store a ton of history (default is 20)
"set spell                           " Spell checking on
set hidden                          " Allow buffer switching without saving
set iskeyword-=.                    " '.' is an end of word designator
set iskeyword-=#                    " '#' is an end of word designator
set iskeyword-=-                    " '-' is an end of word designator
set autoread                        " Set to auto read when a file is changed from the outside
set fileencodings=utf-8,gbk,cp936,latin-1
filetype on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim UI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number " Line numbers on
set t_Co=16
set background=dark
let g:solarized_termcolors=16
colorscheme solarized
set tabpagemax=15 " Only show 15 tabs
set showmode " Display the current mode
set cursorline " Highlight current line
"highlight clear SignColumn " SignColumn should match background
"highlight clear LineNr " Current line number row will have same background color in relative mode
"highlight clear CursorLineNr " Remove highlight color from current line number

if has('cmdline_info')
set ruler " Show the ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids
set showcmd " Show partial commands in status line and
" Selected characters/lines in visual mode
endif

if has('statusline')
set laststatus=2

" Broken down into easily includeable segments
set statusline=%<%f\ " Filename
set statusline+=%w%h%m%r " Options
set statusline+=\ [%{&ff}/%Y] " Filetype
set statusline+=\ [%{getcwd()}] " Current dir
set statusline+=%=%-14.(%l,%c%V%)\ %p%% " Right aligned file nav info
endif

set backspace=indent,eol,start " Backspace for dummies
set linespace=0 " No extra spaces between rows
set showmatch " Show matching brackets/parenthesis
set incsearch " Find as you type search
set hlsearch " Highlight search terms
set winminheight=0 " Windows can be 0 line high
set ignorecase " Case insensitive search
set smartcase " Case sensitive when uc present
set wildignorecase " Case insensitive when type command
set wildmenu " Show list instead of just completing
set wildmode=list:longest,full " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,] " Backspace and cursor keys wrap too
set scrolljump=5 " Lines to scroll when cursor leaves screen
set scrolloff=3 " Minimum lines to keep above and below cursor
set foldenable " Auto fold code
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
set cmdheight=2
set hid
set lazyredraw
set magic
set mat=2
" No annoying sound on errors
set noerrorbells
set novisualbell
set tm=500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Formatting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wrap " Wrap long lines
set autoindent " Indent at the same level of the previous line
set shiftwidth=4 " Use indents of 4 spaces
set expandtab " Tabs are spaces, not tabs
set tabstop=4 " An indentation every four columns
set softtabstop=4 " Let backspace delete indent
set nojoinspaces " Prevents inserting two spaces after punctuation on a join (J)
set splitright " Puts new vsplit windows to the right of the current
set splitbelow " Puts new split windows to the bottom of the current
set linespace=0 " 字符间插入的像素行数目
set fillchars=vert:\ ,stl:\ ,stlnc:\ " 在被分割的窗口间显示空白，便于阅读
"set matchpairs+=<:> " Match, to be used with %
set pastetoggle=<F12> " pastetoggle (sane indentation on pastes)
"set comments=sl:/*,mb:*,elx:*/ " auto format comment blocks
" Remove trailing whitespaces and ^M chars
" To disable the stripping of whitespace, add the following to your
" .vimrc.before.local file:
" let g:spf13_keep_trailing_whitespace = 1
autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl,sql autocmd BufWritePre <buffer> if !exists('g:spf13_keep_trailing_whitespace') | call StripTrailingWhitespace() | endif
autocmd FileType haskell,puppet,ruby,yml setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType haskell setlocal commentstring=--\ %s

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
