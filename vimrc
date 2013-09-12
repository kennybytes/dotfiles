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


""  
"" Begin Key configs
""
set pastetoggle=<f5>

map <C-n> :NERDTreeToggle<CR>
