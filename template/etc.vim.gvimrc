" Make external commands work through a pipe instead of a pseudo-tty
"set noguipty

" You can also specify a different font, overriding the default font
"if has('gui_gtk2')
"  set guifont=Bitstream\ Vera\ Sans\ Mono\ 12
"else
"  set guifont=-misc-fixed-medium-r-normal--14-130-75-75-c-70-iso8859-1
"endif

" If you want to run gvim with a dark background, try using a different
" colorscheme or running 'gvim -reverse'.
" http://www.cs.cmu.edu/~maverick/VimColorSchemeTest/ has examples and
" downloads for the colorschemes on vim.org

" Source a global configuration file if available
if filereadable("/etc/vim/gvimrc.local")
  source /etc/vim/gvimrc.local
endif

" for MiniBufExplorer.vim
"               To enable the optional mapping of Control + Vim Direction Keys 
"               [hjkl] to window movement commands, you can put the following into 
"               your .vimrc:
"
                 let g:miniBufExplMapWindowNavVim = 1
"
"               To enable the optional mapping of Control + Arrow Keys to window 
"               movement commands, you can put the following into your .vimrc:
"
                 let g:miniBufExplMapWindowNavArrows = 1
"
"               To enable the optional mapping of <C-TAB> and <C-S-TAB> to a 
"               function that will bring up the next or previous buffer in the
"               current window, you can put the following into your .vimrc:
"
                 let g:miniBufExplMapCTabSwitchBufs = 1

