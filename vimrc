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
autocmd BufRead,BufNewFile   *.php set ts=2 sw=2
autocmd BufRead,BufNewFile   *.py set ts=4 noexpandtab
autocmd BufRead,BufNewFile   Makefile set noexpandtab
autocmd BufRead,BufNewFile   makefile set noexpandtab

set bs=2

""  
"" Begin Key configs
""
set pastetoggle=<f5>

" Set TagList to opoen on the left side
let Tlist_Use_Right_Window = 0

" Set Nerd Tree on the right side
let g:NERDTreeWinPos = "right"

" Use Nerd Tree Tabs Toggle, to enable nerdtree support across tabs
"map <C-n> :NERDTreeToggle<CR>
map <C-n> :NERDTreeTabsToggle<CR>

" map ctrl+d to open a shell, so we can toggle between the two quickly!
noremap <C-d> :sh<cr>

" remap for easier window navigation!
map <C-J> <C-W>j<C-W>
map <C-K> <C-W>k<C-W>
