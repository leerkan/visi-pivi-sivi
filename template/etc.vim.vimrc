" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" 中文乱码
set enc=utf-8
set fenc=utf-8 "设置写入文档时的解码方式
set fencs=utf-8,gb18030,gbk,cp936,gb2312,cp950 "设置打开文档时，检测文档的编码方式顺序
"set encoding=prc
set encoding=utf-8
set fileencodings=UTF-8,gb18030,GBK,pc936,GB2312,big5,pc950
"set termencoding=UTF-8
"set fileencoding=big5

"设定默认文件打开格式
"set filetype=sqlanywhere
set filetype=javascript


" 文件写入格式unix,dos,mac
set fileformat=dos

" VIM默认外观样式
set nu! "显示行号
colorscheme leerkan
" colorscheme morning
"colorscheme default " 兼容终端背景透明
set background=dark " 保证字体颜色较亮
"set background=light
"高亮显示搜索的内容
set hlsearch
"设定Tab默认缩进长度
set tabstop=4
set softtabstop=4
"replace tab with space
"set expandtab "set noexpandtab
"设定自动缩进单位长度
set shiftwidth=4
"设置自动读取外部修改，若当前有改动，则需要:e！来强制执行。
set autoread
"设置vim记录的历史命令个数
set history=700
"设置匹配的括号
set showmatch
"设置标注当前行
set cursorline
"设置标注当前列
set cursorcolumn
"设置文本标准宽度
set textwidth=0
"设置文本参考宽度偏移量(相对于标准宽度)
set colorcolumn=+0
syntax enable
syntax on

set ruler
" 将底色设置为淡绿色
"highlight Normal guibg=#CCE8CF
" You may want to include the following in your vimrc so the cursor color changes when "Caps Lock" is on: 
"highlight Cursor guifg=NONE guibg=Green
"highlight lCursor guifg=NONE guibg=Cyan

set listchars=tab:>-,trail:░
set list listchars=tab:»·,trail:░
"
"set cc=80
"setlocal makeprg=jslint\ %
"setlocal errorformat=%f:%l:%c:%m
"
"let s:showMakeWnd = "0"
"function! ToggleMake()
"echo "Make Wnd mode: " . s:showMakeWnd
"
"if s:showMakeWnd == "0"
"w
"silent make
"cw
"copen
"cc
"else
"cclose
"endif
"
"let s:showMakeWnd = (s:showMakeWnd == "0" ? "1" : "0")
"endfunction
"
" nmap <silent> <F5> :call ToggleMake()<CR>

imap <C-@> <C-Space>
