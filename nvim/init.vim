source $HOME/.config/nvim/vim-plug/plugins.vim

set number " Set lines Numbering

" Set tab spacing to 4
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Set teheme and contrast
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

" NERDTree show hidden files
let NERDTreeShowHidden=1

" NERDTreeFind shortcut
map <silent> <C-b> <Esc>:NERDTreeToggle<CR>

" Set leader key in vim
let mapleader = ","

" Set terminal to use ZSH
:set shell=/usr/bin/zsh

" Pane Management
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Key to exit from terminal mode
tnoremap <Esc> <C-\><C-n>

" Key to autosave on double escape
inoremap <Esc><Esc> <Esc>:update<CR>

" Buffer management
noremap <C-left> <Esc>:bprevious<CR>
noremap <C-right> <Esc>:bnext<CR>
noremap nnoremap gb :buffers<CR>:buffer<Space>

" Shortcut to create a new split with terminal in CWD.
noremap <C-\> <Esc>:vsplit<bar>:lcd%:p:h<bar>:terminal<CR>

