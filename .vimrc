"
" VIMRC
"

" disable set visualbell
set t_vb=

" show line numbers
set number

" autoindent
set autoindent

" set tab width to 4
set tabstop=4

" syntax highlighting
syntax enable

" wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx


"
" STATUS LINE
"

" clear status line when vimrc is reloaded.
set statusline=

" status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" use a divider to separate the left side from the right side.
set statusline+=%=

" status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" show the status on the second to last line.
set laststatus=2
