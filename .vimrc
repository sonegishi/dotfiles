"------------------------------------
" MacVim
"------------------------------------
if has('gui_macvim')
  colorscheme pyte
endif

set nocompatible
imap <C-g> <esc>

"" For files
" Eliminate white spaces at the end of each line when saving a file
autocmd BufWritePre * :%s/\s\+$//ge
" Visualize em spaces
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=white
match ZenkakuSpace /　/
set autoread
set hidden
set noswapfile
set nobackup
filetype on
filetype plugin on
filetype indent on

"" Appearance
set number
set showmatch
set showcmd
set showmode
set nowrap
set list
set listchars=tab:>\
set scrolloff=5
set guifont=SourceCodePro-Regular:h12

"" Status-line
" Show character codes and newline character classes on status-line
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
" Always show status-line
set laststatus=2

"" Indentation
set tabstop=2 shiftwidth=2
set autoindent smarttab
" Put spaces instead of a tab
set expandtab

"" Input
" Enable to delete newlines and indentations using backspace
set backspace=2

"" Searching
set wrapscan
set ignorecase
set smartcase
set incsearch
set hlsearch

" Utils
nnoremap <silent> <Space>q :quit<CR>
nnoremap <silent> <Space>Q :quit!<CR>
nnoremap <silent> <Space>e :wq<CR>
nnoremap <silent> <Space><Space> :w<CR>
nnoremap <PageDown> <C-F>
nnoremap <PageUp> <C-B>
nnoremap <silent> <Space>j :tabn<CR>
nnoremap <silent> <Space>l :tabp<CR>
nnoremap <silent> <Space>t :tabe<CR>
nnoremap <silent> <Space>n :sp<CR>
nnoremap <silent> <Space>m :vs<CR>
set clipboard=unnamed

"nnoremap ] :<C-u>set transparency=
"noremap <Up> :<C-u>set transparency+=5<Cr>
"noremap <Down> :<C-u>set transparency-=5<Cr>

" memo
set noruler
set showmatch
set wrap
set title
set backspace=2
set history=100
set noautochdir
set nobackup
set tw=0
au FileType ruby setlocal nowrap tabstop=8 tw=0 sw=2 expandtab

autocmd FileType coffee set tabstop=2 shiftwidth=2

let g:vim_json_syntax_conceal = 0

"------------------------------------
" Indentation Guides
"------------------------------------
hi IndentGuidesOdd  ctermbg=white
hi IndentGuidesEven ctermbg=lightgrey
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

"------------------------------------
" NERD Tree
"------------------------------------
nmap <silent> <Space>p :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 40

set fileformats=unix,dos,mac
" Fix a cursor position even if a sentence includes characters such as □and ○
if exists('&ambiwidth')
  set ambiwidth=double
endif


syntax on
