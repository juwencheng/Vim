" be iMproved, required
set nocompatible

"-------------------------Vundle Plugins----------------------"
so ~/.vim/plugins.vim

filetype plugin indent on
filetype on
" }}}

" 基础设置
" {{{
set hlsearch
set incsearch
set magic
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set wildmenu
set showmatch
set number
set backspace=indent,eol,start

" 折叠
set foldenable
set foldlevelstart=20
" set foldmethod=syntax

" 状态条
set cmdheight=1
set laststatus=2

" 颜色方案
syntax on
colorscheme kolor
" colorscheme nature
" kolor
" }}}

" 快捷键
" {{{
let mapleader=',' 
nnoremap <C-d> :NERDTreeToggle<CR>
inoremap jk <ESC>
nnoremap <space> za
nnoremap <leader>ev :tabedit $MYVIMRC<CR>
nnoremap <leader>c  :close<CR>

" 标签大纲视图切换
nnoremap <leader>tb :TagbarToggle<CR>
let g:tagbar_autofocus=1 

" 切换窗口
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k

" 删除到行未
nnoremap de d$

" 切换buffer，在一个窗口里面有多个buffer
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>
" 关闭当前buffer
nnoremap <leader>bd :bd<CR>
" }}}

" TagList 配置
" {{{
let Tlist_Use_Right_Window = 1
" }}}

" vim=markdown 配置
" {{{
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_conceal = 2
let g:vim_markdown_folding_level = 6
" }}}

" vim-ariline 配置
" {{{
let g:airline_theme = 'powerlineish'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep= '|'
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1
" }}}

" syntastic 配置
" {{{
let g:syntastic_always_populate_loc_list=0
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1
" }}}

" NERDTree配置
" {{{
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:NERDTREE_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
" 设置宽度
let g:NERDTreeWinSize = 30
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
" }}}

let g:typescript_indent_disable = 1
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd FileType typescript :set makeprg=tsc
" CtrlP 配置忽略文件
"  {{{
let g:ctrlp_custom_ignore='_site'
"  }}}

" ycm 配置
" {{{
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
" }}}

" SnipMate 配置
" {{{
imap <C-J> <esc>a<Plug>snipMateNextOrTrigger
" 解决与 YCM 插件的冲突
" let g:UltiSnipsExpandTrigger="<c-j>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" }}}

" 折叠vim配置文件里面代码，打开默认折叠
" {{{
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END	
" }}}

augroup vimrc_sourcing
	autocmd!
	autocmd BufWritePost .vimrc source $MYVIMRC
augroup END	
" 折叠python配置文件里面代码，打开默认折叠
" {{{
augroup filetype_python
	autocmd!
	autocmd FileType python setlocal foldmethod=indent
augroup END	
au FileType python nnoremap <leader>b :!python %<cr>
" }}}
"
au BufNewFile, BufRead *.js, *.html, *.css set tabstop=2
            \ softtabstop=2 
            \ shiftwidth=2
            \ expandtab
            \ autoindent

" Go开发环境配置
" {{{
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <leader>ds <Plug>(go-def-split)
au FileType go nmap <leader>dv <Plug>(go-def-vertical)
let g:go_play_open_browser = 0

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
" }}}
