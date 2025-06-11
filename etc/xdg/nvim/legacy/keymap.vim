" Leader
let mapleader = " "

" Insert Keymaps
imap kj <ESC>

" Command Keymaps
"" Shebang!
nmap 3r mhggO#!/usr/bin/env ruby<ESC>`h
nmap 3b mhggO#!/usr/bin/env bash<ESC>`h

"" Miscellaneous
nmap D mhgg$vT:x:r!date -u +\%s<CR>kJ:w<CR>`h
nmap <Space>q :qa!<CR>
nmap <Space>r :exe "source " .. vimrc<CR>
nmap <C-Left> :-tabmove<CR>
nmap <C-Right> :+tabmove<CR>
nmap <C-s> :w<CR>
nmap <C-x> :q<CR>
nmap <M-p> :set list!<CR>

"" Open Config files
nmap <Space>b :exec "tabfind " .. brackets<CR>
nmap <Space>i :exec "tabfind " .. cfgdir<CR>
nmap <Space>k :exec "tabfind " .. keymap<CR>
nmap <Space>p :exec "tabfind " .. plugins<CR>

" Visual Keymaps
vmap kj <ESC>
