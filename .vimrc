" 修改leader键
let mapleader = ','

" 显示相关  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set cul "高亮光标所在行
"set cuc
colorscheme inkpot1    " 设置背景主题  
set ruler           " 显示标尺  
set showcmd         " 输入的命令显示出来，看的清楚些  
set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离  
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容  
set laststatus=2    " 启动显示状态行(1),总是显示状态行(2)  

" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 使用空格代替制表符
set expandtab
" 在行和段开始处使用制表符
set smarttab

set selection=inclusive
set wildmenu
set mousemodel=popup

" 显示行号
set number
" 历史记录数
set history=1000
"搜索逐字符高亮
set hlsearch
set incsearch
noremap <silent><leader><CR> :nohls<CR> 
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
" 总是显示状态行
set cmdheight=2
" 侦测文件类型
"filetype on
" 载入文件类型插件
filetype plugin indent on
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-


"将tab替换为空格
nmap tt :%s/\t/    /g<CR>

"键盘命令
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:nmap <silent> <F9> <ESC>:Tlist<RETURN>
map! <C-Z> <Esc>zzi
map! <C-O> <C-Y>,
map <C-A> ggVG$"+y
map <F12> gg=G
map <C-w> <C-w>w
imap <C-k> <C-y>,
imap <C-t> <C-q><TAB>
imap <C-j> <ESC>
set mouse=v
set clipboard+=unnamed

"列出当前目录文件  
map <silent><F3> :NERDTreeToggle<CR>
imap <F3> <ESC> :NERDTreeToggle<CR>
"打开树状文件目录  
map <C-F3> \be  
:autocmd BufRead,BufNewFile *.dot map <F5> :w<CR>:!dot -Tjpg -o %<.jpg % && eog %<.jpg  <CR><CR> && exec "redr!"
let NERDTreeIgnore=['\.pyc']


" CTags的设定  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tags=tags;  
set autochdir 
let Tlist_Auto_Open=0 
let Tlist_Ctags_Cmd = '/usr/bin/ctags' 
let Tlist_Show_One_File = 1 "不同时显示多个文件的tag，只显示当前文件的 
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Exit_OnlyWindow = 1 "如果taglist窗口是最后一个窗口，则退出vim 
let Tlist_Use_Right_Window = 1 "在右侧窗口中显示taglist窗口
let Tlist_Sort_Type = "name"    " 按照名称排序  
let Tlist_Compart_Format = 1    " 压缩方式  
nmap tl :Tlist<cr>

"python补全
let g:pydiction_location = '~/.vim/after/complete-dict'
let g:pydiction_menu_height = 20
autocmd FileType python set omnifunc=pythoncomplete#Complete
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030


"ctrlp设置
filetype plugin indent on
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.png,*.jpg,*.gif     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = '\v\.(exe|so|dll)$'
let g:ctrlp_extensions = ['funky']


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
" original repos on github
"Bundle 'tpope/vim-fugitive'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'Yggdroot/indentLine'
let g:indentLine_char = '┊'
"Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'https://github.com/wincent/command-t.git'
Bundle 'Auto-Pairs'
Bundle 'python-imports.vim'
"Bundle 'CaptureClipboard'
"Bundle 'last_edit_marker.vim'
"Bundle 'synmark.vim'
"Bundle 'Python-mode-klen'
Bundle 'SQLComplete.vim'
Bundle 'Javascript-OmniCompletion-with-YUI-and-j'
"Bundle 'JavaScript-Indent'
"Bundle 'Better-Javascript-Indentation'
"Bundle 'jslint.vim'
"Bundle "pangloss/vim-javascript"
Bundle 'Vim-Script-Updater'
Bundle 'ctrlp.vim'
Bundle 'ctrlp-modified.vim'
"Bundle 'tacahiroy/ctrlp-funky'
"Bundle 'jsbeautify'
Bundle 'The-NERD-Commenter'
"django
Bundle 'django_templates.vim'
Bundle 'Django-Projects'
filetype plugin indent on     " required!

