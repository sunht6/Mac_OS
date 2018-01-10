set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
syntax enable 
set background=dark
colorscheme solarized
set ts=4
set expandtab
set shiftwidth=4
"set smartindent

"Vundle Start
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"YCM
Bundle 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

"导航
Plugin 'scrooloose/nerdtree'
" Ctrl+N 打开/关闭
map <C-n> :NERDTreeToggle<CR>
" 当不带参数打开Vim时自动加载项目树
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 当所有文件关闭时关闭项目树窗格
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" 不显示这些文件
let NERDTreeIgnore=['\.pyc$', '\~$', 'node_modules'] "ignore files in NERDTree
" 不显示项目树上额外的信息，例如帮助、提示什么的
let NERDTreeMinimalUI=1

"Vim中copy的所有内容都会上系统剪切板
set clipboard=unnamed

"注释 反注释
Plugin 'scrooloose/nerdcommenter'   " commenter: \cc \cu
"其中的\\是可以设置的
"let mapleader=';'

Plugin 'vim-airline/vim-airline'
let g:airline_powerline_fonts = 1
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"./configure   --with-features=huge  --enable-pythoninterp
"--with-python-config-dir=/usr/lib/python2.7/config && sudo make install
