call plug#begin('~/.config/nvim/plugged')
  Plug 'morhetz/gruvbox'
  Plug 'voldikss/vim-floaterm'
  Plug 'preservim/nerdtree
call plug#end()

augroup cdpwd
  autocmd!
  autocmd VimEnter * cd $PWD
  autocmd VimEnter * NERDTree
augroup END
set number
autocmd BufEnter * silent! lcd %:p:h
map! <S-Insert> <C-R>+
colorscheme gruvbox

let g:floaterm_keymap_new    = '<F3>'
let g:floaterm_keymap_prev   = '<F4>'
let g:floaterm_keymap_next   = '<F5>'
let g:floaterm_keymap_toggle = '<F2>'
