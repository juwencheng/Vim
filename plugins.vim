" required
filetype off 

" set the runtime path to include Vundle and initialize
" {{{
set rtp+=~/.vim/bundle/Vundle.vim
" let g:snippets_dir='~/.vim/snippets'

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" 树形文件浏览
Plugin 'scrooloose/nerdtree'

" 语法检查工具
" Plugin 'scrooloose/syntastic'

" 状态条
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" 补全工具
" Plugin 'valloric/youcompleteme'

" 颜色主题
Plugin 'zeis/vim-kolor'

" Plugin 'taglist.vim'

Plugin 'hynek/vim-python-pep8-indent'

Plugin 'majutsushi/tagbar'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
" Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
" 编辑器插件
Plugin 'editorconfig/editorconfig-vim'

" 快捷搜索文件
Plugin 'kien/ctrlp.vim'

" Jekyll博客插件
Plugin 'parkr/vim-jekyll'

Plugin 'leafgarland/typescript-vim'

" 强大的编辑包围字符的插件
Plugin 'tpope/vim-surround'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" Go语言插件
Plugin 'fatih/vim-go'

call vundle#end()
