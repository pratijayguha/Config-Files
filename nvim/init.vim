source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/plug-config/start-page.vim
source $HOME/.config/nvim/plug-config/coc.vim

set number " Set lines Numbering
set hidden " Permit hidden buffers

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
let mapleader = " "

" Use mouse in vim
set mouse=a

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
noremap <leader>[ <Esc>:bprevious<CR>
noremap <leader>] <Esc>:bnext<CR>
noremap gb <Esc>:buffers<CR>:buffer<Space>

" Shortcut to create a new split with terminal in CWD.
noremap <C-\> <Esc>:vsplit<bar>:lcd%:p:h<bar>:terminal<CR>


let g:lightline#bufferline#show_number  = 1
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#unnamed      = '[No Name]'
set showtabline=2
let g:lightline#bufferline#filename_modifier = ':t'
let g:lightline = {'colorscheme': 'wombat'}
let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}

autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
