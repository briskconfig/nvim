let cfgdir='$HOME/.local/etc/xdg/nvim/'
let brackets=cfgdir     .. 'legacy/brackets.vim'
let color=cfgdir        .. 'legacy/color/Emerald.vim'
let keymap=cfgdir       .. 'legacy/keymap.vim'
let netrw=cfgdir        .. 'legacy/netrw.vim'
let plugins=cfgdir      .. 'legacy/plug.vim'
let special='$HOME/.local/state/nvim/'
let vimrc=cfgdir        .. 'init.vim'

" Use Amythest color-scheme if root
if $HOME == '/root'
  let color=cfgdir .. 'legacy/color/Amythest.vim'
endif

set colorcolumn=79,99
set cursorline
set expandtab
set foldmethod=indent
set ignorecase
set nowrap
set number
set shiftwidth=2
set smartcase
set softtabstop=2
set tabstop=2
set undofile

" Special Vim Directories
execute "set backupdir=" .. special .. "backup"
execute "set directory=" .. special .. "swp"
execute "set undodir="   .. special .. "undo"

execute "source "  .. brackets
execute "source "  .. color
execute "source "  .. keymap
execute "source "  .. netrw
execute "source "  .. plugins
echo    "Sourced " .. vimrc
