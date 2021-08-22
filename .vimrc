set shell=bash
set nocompatible
filetype off

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')


Plug 'bluz71/vim-nightfly-guicolors'
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plugin 'raimondi/delimitmate'
" Plugin 'Shougo/vimproc.vim'
" Plugin 'Lokaltog/powerline'
" Plugin 'tomasr/molokai'
" Plugin 'nathanaelkane/vim-indent-guides'
" Plugin 'pbrisbin/vim-syntax-shakespeare'
" Plugin 'marijnh/tern_for_vim'
" Plugin 'cypok/vim-sml'
" Plugin 'eagletmt/ghcmod-vim'
" Plugin 'tpope/vim-fugitive'
" Plugin 'scrooloose/nerdcommenter'
" Plugin 'MarcWeber/vim-addon-mw-utils'
" Plugin 'tomtom/tlib_vim'
" Plugin 'garbas/vim-snipmate'
" Plugin 'honza/vim-snippets'
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
" Plugin 'parsonsmatt/intero-neovim'

"" Plugin: Easymotion {{{
  " Provides a much simpler way to use motions in Vim
  " Plugin 'Lokaltog/vim-easymotion'
"" }}}

"" Plugin: Haskell {{{
  " Syntax Highlighting and Indentation for Haskell and Cabal
  " Plugin 'neovimhaskell/haskell-vim'
"" }}}


call plug#end()

syntax on

" Use new regular expressions engine
set re=0

set nocompatible
set number
set nowrap
set showmode
set tw=80
set smartcase
set smarttab
if !has('nvim')
  set guifont=Menlo\ Regular:h13
endif

" Indent automatically depending on filetype
filetype plugin indent on
set smartindent
set autoindent
set foldmethod=indent

set softtabstop=2
set shiftwidth=2
set expandtab
set incsearch
set mouse=a
set history=1000
if !has('nvim')
  set clipboard=unnamedplus,autoselect
endif
set smartcase
" Case insensitive search
set ic

" Higlhight search
set hls

" Wrap text instead of being on one line
set lbr

" Change colorscheme from default to delek
" set background=dark
colorscheme nightfly

set completeopt=menuone,menu,longest

set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
set wildmenu
set completeopt+=longest

set t_Co=256
set termguicolors

set cmdheight=1

map <Leader>s :SyntasticToggleMode<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>

nnoremap <C-p> :FZF<CR>

let g:SuperTabDefaultCompletionType = '<c-x><c-o>'

if has("gui_running")
  imap <c-space> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
else " no gui
  if has("unix")
    inoremap <Nul> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
  endif
endif

let g:haskellmode_completion_ghc = 1
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

let g:haskell_tabular = 1

vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>

let g:ctrlp_custom_ignore = '\v[\/]dist$|[\/](\.(git|hg|svn))|[\/]node_modules$'

autocmd FileType javascript setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType jsp set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd Filetype gitcommit setlocal spell textwidth=72

let javascript_enable_domhtmlcss=1
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
let g:javascript_plugin_flow = 1
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

