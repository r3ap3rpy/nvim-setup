call plug#begin('~/AppData/Local/nvim-data/site/autoload')
  Plug 'morhetz/gruvbox'
  Plug 'preservim/nerdtree'
  Plug 'neoclide/coc.nvim', {'branch':'release'}
  Plug 'tmhedberg/SimpylFold'
call plug#end()

augroup cdpwd
  autocmd!
  autocmd VimEnter * cd $DWD
  autocmd VimEnter * NERDTree
augroup END

autocmd BufEnter * silent! lcd %:p:h
map! <S-Insert> <C-R>+
colorscheme gruvbox

