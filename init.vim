call plug#begin('~/.config/nvim/plugged')
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'rust-lang/rust.vim'
  Plug 'morhetz/gruvbox'
  Plug 'voldikss/vim-floaterm'
  Plug 'preservim/nerdtree'
call plug#end()

augroup cdpwd
  autocmd!
  autocmd VimEnter * cd $PWD
  autocmd VimEnter * NERDTree
augroup END

syntax enable
filetype plugin indent on

set number
set relativenumber
autocmd BufEnter * silent! lcd %:p:h
map! <S-Insert> <C-R>+


colorscheme gruvbox
let NERDTreeShowHidden=1
let g:floaterm_keymap_exit   = '<F1>'
let g:floaterm_keymap_new    = '<F3>'
let g:floaterm_keymap_prev   = '<F4>'
let g:floaterm_keymap_next   = '<F5>'
let g:floaterm_keymap_toggle = '<F2>'

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
