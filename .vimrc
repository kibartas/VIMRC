" Basic-settings-----------------------------------{{{
let mapleader = "-"
let maplocalleader = "\<space>"

set number
syntax enable
set tabstop=4
set autoindent
set shiftwidth=0
set wrap
set showmatch
" }}}

" Mappings------------------------------------{{{
noremap <leader>- ddp
noremap <leader>_ ^d$kp
inoremap <leader><c-u> <esc>lviwU
nnoremap <leader><c-u> viwU

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>v
nnoremap H ^
nnoremap L $

inoremap jk <esc>
inoremap <esc> <nop>
" }}}

" Abbreviations------------------------------------{{{
iabbrev @@ juodasis.perlas@gmail.com
iabbrev ssig -- <cr>Julius Rasimas<cr>juodasis.perlas@gmail.com
onoremap in@ :<c-u>execute "normal! ?\\S\\+@\\S\\+[.]\\S\\+\r:nohlsearch\rvg_"<cr> 
" }}}

" Filetypes-settings--------------------------------------{{{
" cplusplus
inoremap {<cr> {<cr>}<c-o>O<tab>
augroup filetype_cpp
	autocmd!
	autocmd FileType cpp nnoremap <buffer> <localleader>c I//<esc>
augroup END

" python
augroup filetype_py
	autocmd!
	autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
augroup END

" javascript
augroup filetype_js
	autocmd!
	autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
augroup END

" html
augroup filetype_html
	autocmd!
	autocmd FileType html setlocal nowrap
	autocmd Filetype html setlocal spell spelllang=en_us
	autocmd Filetype html onoremap ih :<c-u>execute "normal! ?^[=-]\\+$\r:nohlsearch\rkvg_"<cr>
	autocmd Filetype html onoremap ah :<c-u>execute "normal! ?^[=-]\\+$\r:nohlsearch\rg_vk0"<cr>
augroup END
" }}}

" Status line-------------------------------------{{{
set statusline=%f
set statusline+=%=
set statusline+=%l
set statusline+=/
set statusline+=%L
" }}}

" Vimscript-file-settings ---------------------------------------- {{{
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}