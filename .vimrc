" ==========================
"          SETTINGS
" ==========================

" Resize
set lines=56
set columns=232

" Encoding & UI
set encoding=utf-8
set fileencoding=utf-8
set number
set ruler
set scrolloff=1

" Wrap / linebreak
set wrap
set linebreak
set breakindent
set whichwrap+=h,l,<,>,[,]

" Cursorlines
set nocursorline

" Statusline
set laststatus=2
set statusline=
set statusline+=%f
set statusline+=\ %m
set statusline+=%=
set statusline+=%{&fileencoding?&fileencoding:&encoding}
set statusline+=\ \ \|\ \ 
set statusline+=%{&fileformat=='unix'?'linux':&fileformat=='dos'?'windows':'mac'}
set statusline+=\ \ \|\ \ 
set statusline+=%{&filetype}
set statusline+=\ \ \|\ \ 
set statusline+=%p%%
set statusline+=\ \ \|\ \ 
set statusline+=%l:%c

" Tabline
set showtabline=2
set switchbuf=useopen,usetab

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

" Colorscheme
set background=dark
colorscheme koehler

" Updatetime
set updatetime=300

" Allowing moving to another buffers when unsave buffers now
set hidden

" Map leader
let mapleader = " "

" Confirm
set confirm

" GVim-specific GUI
if has("gui_running")
    set guioptions-=m   " menu bar
    set guioptions-=T   " toolbar
    set guioptions-=t   " old toolbar
    set guioptions-=r   " right scrollbar
    set guioptions-=l   " left scrollbar
    set guioptions-=b   " down scrollbar
    set guioptions-=L   " up scrollbar
    set guioptions-=e   " tabline GUI
    set guioptions-=i   " window icon
    set guioptions-=F   " footer
    set guifont=JetBrainsMono\ Nerd\ Font\ Mono\ Regular\ 10
endif

" Filetype-specific indentation
autocmd FileType      c,cpp     setlocal cindent noexpandtab nowrap
autocmd FileType      python,yaml,json      setlocal expandtab nocindent
hi      StatusLine    gui=bold guifg=#ffffff guibg=#2b4f81
hi      StatusLineNC  gui=none guifg=#a0a0a0 guibg=#1c1c1c
hi      TabLineFill   ctermbg=NONE guibg=NONE

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

" New tab, Open tab, closetab, close all only present, move to next/prev tab
nnoremap <silent> <C-t>   :tabnew<CR>
nnoremap <C-o>            :tabedit<Space>
nnoremap <silent> <C-q>   :if tabpagenr('$') > 1 \| tabclose \| else \| bdelete \| enew \| endif<CR>
nnoremap <silent> <C-n>   gt
nnoremap <silent> <C-p>   gT

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

" ==========================
"        END OF CONFIG
" ==========================
