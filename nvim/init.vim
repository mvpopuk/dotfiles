let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

" Source plugins
call plug#begin()
 source ~/.dotfiles/nvim/plugins.vim
call plug#end()

call sourcery#source_defer('config/bufferline.lua')
call sourcery#source_defer('config/cmp.lua')

" Initialize sourcery
call sourcery#init()
