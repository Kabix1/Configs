highlight NonText ctermbg=none
hi Normal ctermbg=none

noremap ¨ $

nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

command! -range IP s/.*[^0-9]\([0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\).*/\1/g | noh

command! Duplicates %!awk 'a[$0]++'
