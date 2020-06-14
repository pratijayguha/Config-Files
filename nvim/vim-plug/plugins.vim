":CocInstall coc-json auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'preservim/nerdtree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Better looking line in the bottom
    Plug 'itchyny/lightline.vim'
    " A Vim Plugin for Lively Previewing LaTeX PDF Output
    Plug 'lervag/vimtex', {'for': 'tex'}

    " LaTex Compiler for Vim
    Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

    " Battery Plugin for statusline
    Plug 'lambdalisue/battery.vim'

    " Installing GruvBox for theming
    Plug 'morhetz/gruvbox'
    
    " Install Dracula Theme
    Plug 'dracula/vim', { 'as': 'dracula' }
    
    " Comments enabler
    Plug 'tpope/vim-commentary'
    
    " FZF Plugin
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

    call plug#end()
