"	
"
"	Kenny Luong
"	Vim Configuration File
"
"

syntax on
set autoindent

"
"
"										
"
set pastetoggle=<f5>

"
"	Column Formatting
"
"
"match ErrorMsg '\%>100v.\+'

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
        
set bg=dark
syntax enable
colorscheme solarized


"To get syntax highlighting on SSH secure shell
set term=ansi

se t_Co=16

filetype on
au BufNewFile,BufRead *.ino set filetype=c
