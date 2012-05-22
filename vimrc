" vundle
set rtp+=~/.vim/vundle/
call vundle#rc('~/.vim/bundle')
Bundle 'petdance/vim-perl'
Bundle 'hotchpotch/perldoc-vim'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neocomplcache-snippets-complete'
Bundle 'thinca/vim-quickrun'
Bundle 'Shougo/unite.vim'
Bundle 'mattn/zencoding-vim'
Bundle 'thinca/vim-ref'
Bundle 'tomasr/molokai'
Bundle 'altercation/solarized'

filetype on
filetype plugin indent on
syntax enable
set number
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set smarttab
set shiftround
set autoindent
set copyindent

set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase
 
set backspace=indent,eol,start
set whichwrap=l,h

set fileencodings=utf8,cso-2022-jp,cp932,euc-jp
set laststatus=2
set statusline=%f\ [%{&fenc==''?&enc:&fenc}][%{&ff}]%=%8l:%c%8P

set bs=2
set ruler

set background=dark
set t_Co=256
colorscheme molokai
"colorscheme solarized


" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
 " Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Select with <TAB>
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
let g:neocomplcache_ctags_arguments_list = {
  \ 'perl' : '-R -h ".pm"'
  \ }
let g:neocomplcache_snippets_dir = "~/.vim/snippets"
" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default'    : '',
    \ 'perl'       : $HOME . '/.vim/dict/perl.dict'
    \ }
" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
" for snippets
imap <expr><C-k> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : "\<C-n>"
smap <C-k> <Plug>(neocomplcache_snippets_expand)
imap <C-j> <Esc>

" unite
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>

" 
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

"quickrun
let g:quickrun_config={'*': {'split': ''}}
