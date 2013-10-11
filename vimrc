"	
"
"	Kenny Luong
"	Vim Configuration File
"
"

call pathogen#infect()
call pathogen#helptags()

syntax on
set bg=dark

""  Uncomment to enable 100 column red highlighting 
"match ErrorMsg '\%>100v.\+'

""  Set Paragraph options
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

"" Turns on line numbers 
set number

""  Uncomment the following lines to enable syntax highlighting for
""  solarized gnome terminal
syntax enable
colorscheme solarized
se t_Co=16

""  To get syntax highlighting on SSH secure shell
"set term=ansi

""  Set other filetypes!
filetype on
au BufNewFile,BufRead *.ino set filetype=c

"" File specific commands
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd BufRead,BufNewFile   *.html set ts=2 sw=2

set bs=2

""  
"" Begin Key configs
""
set pastetoggle=<f5>

map <C-n> :NERDTreeToggle<CR>
