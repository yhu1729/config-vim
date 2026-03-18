let g:fzf_layout = {
\   "window": {
\     "width": 1.0,
\     "height": 1.0,
\     "border": "none",
\   },
\ }

let g:fzf_colors = {
\   "fg+": [ "bg", "Normal" ],
\   "bg+": [ "fg", "Normal" ],
\   "hl": [ "fg", "Normal" ],
\   "hl+": [ "bg", "Normal" ],
\   "gutter": [ "bg", "Normal" ],
\   "pointer": [ "bg", "Normal" ],
\ }

let g:fzf_vim = {
\   "buffers_jump": 1,
\   "grep_multi_line": 1,
\   "preview_window": [ "down,70%,border-top,nowrap,noinfo" ],
\ }

let g:fzf_vim.listproc = { list -> fzf#vim#listproc#location(list) }

let g:fzf_default_options = {
\   "options": '--pointer=" " --marker=" "',
\ }

command! -bang -nargs=? -complete=dir Files
\ call fzf#vim#files(<q-args>, fzf#vim#with_preview(g:fzf_default_options), <bang>0)

command! -bang -nargs=* Rg
\ call fzf#vim#grep(
\   "rg --hidden --column --line-number --no-heading"
\     .. " --color=never --smart-case --iglob=!.git/ -- "
\     .. fzf#shellescape(<q-args>),
\   fzf#vim#with_preview(g:fzf_default_options),
\   <bang>0)

nnoremap <Leader>b <Cmd>Buffers<CR>
nnoremap <Leader>f <Cmd>Files<CR>
nnoremap <Leader>g :Rg<Space>
nnoremap <Leader>l <Cmd>BLines<CR>
