" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" TAB in general mode will move to text buffer
nnoremap <C-j> :bnext<CR>
nnoremap <C-k> :bprevious<CR>

" switch focus
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l

" start or end
nnoremap L $
nnoremap H ^
