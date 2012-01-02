" Start Pathogen
call pathogen#infect()

" change the mapleader from \ to ,
let mapleader = ","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>rv :so $MYVIMRC<CR>


set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set expandtab

"set autoindent    " always set autoindenting on
"set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
"set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type



set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set vb
set noerrorbells         " don't beep

set nobackup
set nowritebackup
set noswapfile

filetype plugin indent on

if has('autocmd')
    autocmd filetype python set expandtab
    autocmd filetype javascript set expandtab
endif

if &t_Co >= 256 || has("gui_running")
    let g:solarized_termtrans=1
    "let g:solarized_termcolors=256
    let g:solarized_contrast="high"
    let g:solarized_visibility="high"
    colorscheme solarized
endif

if &t_Co > 2 || has("gui_running")
    " switch syntax highlighting on, when the terminal has colors
    syntax on
endif

" Highlight whitespace in an interesting way
set list
set listchars=tab:› ,trail:¤,extends:▷,nbsp:.
:highlight SpecialKey ctermfg=7
:highlight NonText ctermfg=7

:highlight LineNr term=bold ctermfg=7
highlight Search     ctermfg=4      ctermbg=7     cterm=NONE

autocmd filetype html,xml set listchars-=tab:>.

" Paste toggle should fix the busted pasting from the autoindent
:set pastetoggle=F2

" clear search highlighting with ',/'
nmap <silent> ,/ :nohlsearch<CR>

" PLAYing  with buffers
" window
nmap <leader>nw<left>  :topleft  vnew<CR>
nmap <leader>nw<right> :botright vnew<CR>
nmap <leader>nw<up>    :topleft  new<CR>
nmap <leader>nw<down>  :botright new<CR>
" buffer
nmap <leader>n<left>   :leftabove  vnew<CR>
nmap <leader>n<right>  :rightbelow vnew<CR>
nmap <leader>n<up>     :leftabove  new<CR>
nmap <leader>n<down>   :rightbelow new<CR>


" TABS
" Map CTRL-N to create a new tab
:map <C-n> <ESC>:tabnew<RETURN>
" Map Tab and CTRL-Tab to move between tabs
:map <Tab> <ESC>:tabn<RETURN>
:map <C-Tab> <ESC>:tabp<RETURN>
" Always show tab bar (help with a silly resizing bug/issue
set showtabline=2

" Clipboard
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y

" Directories and files
:set autochdir
:set wildmenu

" NerdTree Config
let mapleader = ","
map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
map <Leader>a :wincmd W<CR>
map <Leader>s :wincmd w<CR>
" Single click mouse for GVIM
let NERDTreeMouseMode=2
" These dont do what I want them to yet
let NERDTreeShowBookmarks=1
let NERDTreeBookmarksFile=expand("$HOME/.vim/NERDTreeBookmarks")

" Supertab
" nnoremap <leader>l :TagbarToggle<CR>
