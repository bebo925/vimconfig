
syntax enable
so ~/.vim/plugins.vim
set background=dark
let g:solarized_termcolors=256
colorscheme molokai
set backspace=indent,eol,start
let mapleader = ','
set number
set hlsearch
set incsearch
set guifont=Fira_Code:h14
set linespace=13
set macligatures
set textwidth=0
set wrapmargin=0
set wrap!
set laststatus=2
set cursorline
"Allow dir list when tabing 
set wildmenu
"Ignore case when searching
set ignorecase
" Don't redraw while executing macros (good performance config)
set lazyredraw


"=============Mappings================"
nmap <D-1> :NERDTreeToggle<cr>
nmap <D-R> :CtrlPBufTag<cr>
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader><space> :nohlsearch<cr>
nmap <D-p> :CtrlP<cr>
" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
map <leader>ba :bufdo bd<cr>
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
"--------------Extra------------------
" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

"let g:ctrlp_map = '<D-p>'
let g:airline_powerline_fonts = 1
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\bower_components'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END 

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ 

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent