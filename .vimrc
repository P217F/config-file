" ==========================
"          SETTINGS
" ==========================

" Encoding & UI
set encoding=utf-8
set fileencoding=utf-8
set number
set ruler

" Wrap / linebreak
set wrap
set linebreak
set breakindent
set whichwrap+=h,l,<,>,[,]

" Cursorlines
set nocursorline

" Tabline
set showtabline=0
set switchbuf=useopen

" Statusline
set laststatus=2
hi StatusLine  ctermfg=223 ctermbg=235 cterm=NONE
hi StatusLineNC ctermfg=245 ctermbg=233 cterm=NONE

" Indentation
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
filetype plugin indent on

" Search
set ignorecase
set smartcase
set incsearch
set hlsearch

" Files
set autoread
set swapfile
set undofile

" Turn off signal
set noerrorbells
set visualbell
set t_vb=

" Mouse & Clipboard
set mouse=a
set clipboard=unnamedplus

" Syntax highlighting
syntax on

" Updatetime Timeoutlen
set updatetime=200
set timeout
set ttimeout
set timeoutlen=200
set ttimeoutlen=100

" Allowing moving to another buffers when unsave buffers now
set hidden

" Map leader
let mapleader = " "

" Confirm
set confirm

" Filetype-specific indentation
autocmd FileType      c,cpp     setlocal cindent noexpandtab nowrap
autocmd FileType      python,yaml,json      setlocal expandtab nocindent

" Motion for visual lines (wrap)
nnoremap j gj
nnoremap k gk
nnoremap 0 g0
nnoremap $ g$
nnoremap ^ g^

" ==========================
"         KEYMAPS
" ==========================

" Save & Explore
nnoremap <silent> <C-s> :write<CR>
nnoremap <silent> <F3>  :Lexplore<CR>

" Buffer navigation
nnoremap <silent> <Tab>         :bnext<CR>
nnoremap <silent> <S-Tab>       :bprevious<CR>
nnoremap <silent> <leader>x     :bdelete<CR>

" Undo / Redo
nnoremap <C-z> u
nnoremap <C-y> <C-r>
inoremap <C-z> <Esc>u
inoremap <C-y> <Esc><C-r>
vnoremap <C-z> <Esc>u
vnoremap <C-y> <Esc><C-r>

" Window movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Window resizing
nnoremap <silent> <C-Left>  :vertical resize -1<CR>
nnoremap <silent> <C-Right> :vertical resize +1<CR>
nnoremap <silent> <C-Down>  :resize +1<CR>
nnoremap <silent> <C-Up>    :resize -1<CR>

" Split windows
nnoremap <silent> <F1> :sp<CR>
nnoremap <silent> <F2> :vs<CR>

" Show shortmess
nnoremap <silent> <leader>ms :messages<CR>

" Turn off highlight mode
nnoremap <silent> <leader>nh :noh<CR>

" Teminal
set splitright
nnoremap <silent> <F11> :vert term<CR>
nnoremap <silent> <F12> :belowright term<CR>
tnoremap <Esc> <C-\><C-n>
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l

" List buffer
nnoremap <leader>bf :ls<CR>

" ==========================
"        END OF CONFIG
" ==========================
