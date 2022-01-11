" https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
" chmod u+x nvim.appimage ./nvim.appimage
" sudo apt update
" sudo apt install git-all
" sudo apt -y install curl
" sudo apt install exuberant-ctags
" sudo apt install lua5.3

:set number
" :set relativenumber " Relative number to row currently at
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set nowrap

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/vim-airline/vim-airline' " Status Bar
Plug 'https://github.com/preservim/nerdtree' " Nerd Tree, view file tree
Plug 'https://github.com/ryanoasis/vim-devicons' "Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'neoclide/coc.nvim', {'branch': 'release'} " coc autocomplete

" Color Schemes
Plug 'EdenEast/nightfox.nvim' " Nightfox Theme
Plug 'arcticicestudio/nord-vim' " Nord Vim Theme

" Encoding
set encoding=UTF-8

call plug#end()

" Nerd Tree Hotkeys
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" Auto Code Complete Hotkeys
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

" Tagbar Hotkey
nmap <F8> :TagbarToggle<CR>

" Switch Tabs Hotkeys
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

:colorscheme duskfox " Set default color scheme

" Manually set the characters used for NERDTree since most
" Fonts don't have the characters they use
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" Auto Commands
autocmd VimEnter * NERDTree | wincmd p
autocmd VimEnter * TagbarToggle
