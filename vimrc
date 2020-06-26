" Configure tab expansion to be 4 spaces.
set tabstop=4
set shiftwidth=4
set expandtab

" Set color scheme.
colorscheme industry

" Remap CTRL-w to Leader-w.
" This is useful for vims where CTRL-w already does something else such as in
" an AWS Cloud 9 environment whee CTRL-w closes the browser window.
nnoremap <Leader>w <C-w>

" Allow switching buffers when there are unsaved changes.
set hidden

" No highlighting all matching searches, please.
set nohls

" Mappings for working with terminal mode.
if has('nvim')
    tnoremap <Esc> <C-\><C-n>
    tnoremap <M-[> <Esc>
    tnoremap <C-v><Esc> <Esc>
    tnoremap <Leader><Esc> <Esc>
endif

if has('nvim')
    " Terminal mode:
    tnoremap <M-h> <c-\><c-n><c-w>h
    tnoremap <M-j> <c-\><c-n><c-w>j
    tnoremap <M-k> <c-\><c-n><c-w>k
    tnoremap <M-l> <c-\><c-n><c-w>l
    " Insert mode:
    inoremap <M-h> <Esc><c-w>h
    inoremap <M-j> <Esc><c-w>j
    inoremap <M-k> <Esc><c-w>k
    inoremap <M-l> <Esc><c-w>l
    " Visual mode:
    vnoremap <M-h> <Esc><c-w>h
    vnoremap <M-j> <Esc><c-w>j
    vnoremap <M-k> <Esc><c-w>k
    vnoremap <M-l> <Esc><c-w>l
    " Normal mode:
    nnoremap <M-h> <c-w>h
    nnoremap <M-j> <c-w>j
    nnoremap <M-k> <c-w>k
    nnoremap <M-l> <c-w>l
endif

" Cycle through buffers
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

