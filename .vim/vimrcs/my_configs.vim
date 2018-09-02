highlight NonText ctermbg=none
hi Normal ctermbg=none

noremap ¨ $
let maplocalleader="\<space>"
map <leader>t :e! ~/.todo/todo.txt<cr>

nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

command! -range IP s/.*[^0-9]\([0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\).*/\1/g | noh

command! Duplicates %!awk 'a[$0]++'

autocmd FileType bro setlocal commentstring=#\ %s

augroup vimrc
    au BufReadPre * setlocal foldmethod=indent
    au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END

set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

" If you have vim >=8.0 or Neovim >= 0.1.5
" if (has("termguicolors"))
" set termguicolors
" endif

syntax enable
colorscheme tender

" let g:lightline = { 'colorscheme': 'tender' }
let g:airline_theme = 'tender'
