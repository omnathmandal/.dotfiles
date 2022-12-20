noremap <F1> <ESC>:tabprev <CR>
vnoremap <F1> <ESC>:tabprev <CR>
inoremap <F1> <ESC>
 
noremap <F3> <ESC> :w <CR> :make <CR>
inoremap <F3> <ESC> :w <CR> :make <CR>
 
"noremap <F4> <ESC> :w <CR> :!pycodestyle %<.py <CR>
"inoremap <F4> <ESC> :w <CR> :!pycodestyle %<.py <CR>
 
"noremap <F5> <ESC> :w <CR> :!pytest %<.py <CR>
"inoremap <F5> <ESC> :w <CR> :!pytest %<.py <CR>
 
"noremap <F6> <ESC> :!./%< < inp<CR>
"inoremap <F6> <ESC> :!./%< < inp<CR>
 
noremap <F7> <ESC> :w !python3 <CR>
 
"noremap <F7> <ESC> :w <CR> :!avr-gcc -g -std=c99 -O1 -mmcu=atmega328p -o out.elf example.c<CR>
"noremap <F6> <ESC> :w <CR> :!avrdude -v -patmega328p -P /dev/cu.usbmodem14* -c arduino -U flash:w:"out.elf"<CR>
"noremap <F5> <ESC> :w <CR> :!avrdude -v -patmega328p -P /dev/cu.usbmodemHID* -c arduino -U flash:w:"out.elf"<CR>
 
 
noremap <F8> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -DONPC -O2 -o %< % && ./%< < inp<CR>
inoremap <F8> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -DONPC -O2 -o "%<" "%" && "./%<" < inp<CR>
 
" -pthread
 
noremap <F9> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>
inoremap <F9> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>
 
"noremap <F10> <ESC> :w <CR> :!clang++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>
"inoremap <F10> <ESC> :w <CR> :!clang++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>
 
 
noremap <F10> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< < inp<CR>
inoremap <F10> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o "%<" "%" && "./%<" < inp<CR>
 
 
 
"inoremap {<CR> {<CR>}<ESC>k$A<CR>
 
noremap <TAB> %
 
 
call plug#begin()
 
Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"let g:UltiSnipsEditSplit="vertical"
 
Plug 'honza/vim-snippets'

call plug#end()
":PlugInstall
 
 
 
let c_syntax_for_h=""
 
let g:netrw_keepdir = 0
 
let g:netrw_localrmdir='rm -r'
 
let mapleader = "\<Space>"
noremap <Leader>b ^
noremap <Leader>e <ESC>:e .<CR>
noremap <Leader>r <C-R>
noremap <Leader>j <C-W><C-J>
noremap <Leader>u i_<ESC>r
noremap <Leader>n :vs 
noremap <Leader>q :q<CR>
noremap <Leader>o <C-O>
noremap <Leader>i <C-I>
noremap <Leader>a ggVG
noremap <Leader>/ 0i//<ESC>
noremap <Leader>s :source ~/.vimrc <CR>
 
command! Prog :e ~/Documents/programming/
command! SP :e ~/Documents/SPBU_SP_6_term/
command! Kek source ~/.vimrc
"autocmd FocusLost * redraw!
"command! LLDB :!clang++ -fsanitize=address -std=c++17 -O0 -g -o "%<" "%" && lldb %<
command! Gdb !g++ -std=c++17 -O0 -g -o %< 
 
 
set autoindent
set autoread
set cin
set expandtab
set guifont=Menlo\ Regular:h16
set history=1000
set hlsearch
set ignorecase
set incsearch
set mousehide
set noerrorbells
set noswapfile
set number
set pastetoggle=
set shiftwidth=4
set smarttab
set tabstop=4
set vb t_vb=
set relativenumber
 
filetype on
filetype plugin on
autocmd FileType cpp setlocal makeprg=g\+\+\ %\ \-g\ \-std\=c\+\+17\ \-Wall
autocmd FileType haskell setlocal makeprg=ghci\ %
autocmd FileType python setlocal makeprg=python3\ %
autocmd FileType sh setlocal makeprg=%
 
syntax on
 
set shellslash
filetype indent on
set sw=4
set iskeyword+=:

