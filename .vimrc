colorscheme molokai 
syntax on

:set relativenumber
:set cursorline

:set statusline=%t
:set statusline+=%{&ff}
:set statusline+=%h "help file flag
:set statusline+=%m "modified flag
:set statusline+=%r "read only flag
:set statusline+=%y "filetype
:set statusline+=%l/%L "cursor line/ total lines
:set statusline+=\ %P "percent through file
