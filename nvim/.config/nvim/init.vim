set nocompatible              " be iMproved, required
set ruler
set number
set relativenumber
set incsearch
syntax on
au BufReadPost *.asm set syntax=asm8051
vnoremap <C-c> "+y
map <C-p> "+P
vnoremap <C-x> "+x


" CPP SETTINGS
autocmd filetype cpp noremap <F5> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r') <CR> 


" ASM EMULATOR DSM-51 SETTINGS
autocmd filetype asm :set syntax=asm8051
autocmd filetype asm noremap <F12> :w <bar> exec '!wine ~/.config/.SW/DSM-51_Any_CPU.exe '.shellescape('%:r').'.hex' <CR>

autocmd filetype asm noremap <F9> :w <bar> exec '!asem '.shellescape('%') <CR>
autocmd filetype asm noremap <F11> :w <bar> exec '!s51 '.shellescape('%:r').'.hex' <CR>

" autocmd filetype tex noremap <f5> :w <bar> exec '!pdflatex '.shellescape('%').' && evince '.shellescape('%:r').'.pdf & ' <CR> 

autocmd filetype tex noremap <f5> :w <CR> :VimtexCompile <CR>


let g:tex_flavor = 'latex'
let g:vimtex_quickfix_mode = 0
let g:vimtex_view_method = 'zathura'
let g:vimtex_view_forward_search_on_start = 0
" VUNDLE START

filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'lervag/vimtex'


Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
call vundle#end()            " required
filetype plugin indent on    " required

" VUNDLE END



" VIM-AIRLINE
let g:airline_powerline_fonts = 1 "Включить поддержку Powerline шрифтов
let g:airline#extensions#keymap#enabled = 0 "Не показывать текущий маппинг
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" "Кастомная графа положения курсора
let g:Powerline_symbols='unicode' "Поддержка unicode
let g:airline#extensions#xkblayout#enabled = 0 "Про это позже расскажу
