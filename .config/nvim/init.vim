set clipboard+=unnamedplus

set termguicolors

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/norcalli/nvim-colorizer.lua'
call plug#end()


luafile $HOME/.config/nvim/lua/plug-colorizer.lua
lua require'colorizer'.setup()


