" Install vim-plug if it is not already installed
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Source plugins
call plug#begin()
  source ~/.dotfiles/nvim/plugins.vim
call plug#end()

" Load Bufferline at the end of the stack
call sourcery#source_path('config/bufferline.lua')

" Initialize sourcery
call sourcery#init()
