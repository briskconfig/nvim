call plug#begin()

  " Code-Minimap
  Plug 'wfxr/minimap.vim'

  " EasyAlign
  Plug 'junegunn/vim-easy-align'

  " Formatter
  " Plug 'mhartington/formatter.nvim'

  " GitSigns
  Plug 'lewis6991/gitsigns.nvim'

  " Mark how deep indents are, for visualizing alignment
  Plug 'lukas-reineke/indent-blankline.nvim'

  " Mason LSP Easyconfig
  Plug 'williamboman/mason.nvim'

  " Neoformat
  Plug 'sbdchd/neoformat'

  " Telescope Dependency
  Plug 'nvim-lua/plenary.nvim'

  " Harpoon
  Plug 'ThePrimeagen/harpoon'

  " Simplify TreeSitter
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': 'TSUpdate' }

call plug#end()


""" Configuration """
let g:minimap_auto_start = 1
let g:minimap_width      = 19

" Setup Formatter
nnoremap <C-l> <CMD>Neoformat<CR>

" Setup Gitsigns
lua require('gitsigns').setup()

" Setup Indent-Blankline
lua require('ibl').setup()

" Setup Mason
lua require('mason').setup()

" Setup EasyAlign
nmap ga <Plug>(EasyAlign)
vmap ga <Plug>(EasyAlign)
vmap <Space>a ga<C-x>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>fh <cmd>Telescope help_tags<CR>
