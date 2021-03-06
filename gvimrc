" Overriding the default font for Linux
if has("gui_gtk2")
	set guifont=Bitstream\ Vera\ Sans\ Mono\ 11,Fixed\ 11
endif

" Overriding the default font for Mac
if has("gui_macvim")
  set guifont=Monaco:h15
endif

" Use the English menus
set langmenu=none
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Use tiny toolbar icons for Linux
if has("gui_gtk2")
  set toolbariconsize=tiny
endif

" Disable the toolbar
"set guioptions-=T

" Disable the scroll bar
set guioptions-=r

" Change the window size
set lines=32
set columns=100

" Set the input method for Mac
if has("gui_macvim")
  set noimdisable
  set imsearch=0
  autocmd! InsertLeave * set imdisable | set iminsert=0
  autocmd! InsertEnter * set noimdisable | set iminsert=0
  autocmd! CompleteDone * set imdisable| set iminsert=0
endif
