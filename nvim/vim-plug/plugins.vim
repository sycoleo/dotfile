" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " airline
    Plug 'vim-airline/vim-airline'
    " theme
    Plug 'vim-airline/vim-airline-themes'
    " vcs
    Plug 'tpope/vim-fugitive'
    " LeaderF
    Plug 'Yggdroot/LeaderF'

call plug#end()
