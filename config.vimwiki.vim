let g:vimwiki_map_prefix = '<Leader>a'
let g:vimwiki_list = [
  \ {
  \   'path': '~/wiki/',
  \   'path_html': '~/wiki/_html/',
  \   'index': 'home',
  \ }
  \ ]

augroup language_vimwiki
  autocmd!
  autocmd FileType vimwiki nnoremap <buffer> <Leader>aah <Cmd>VimwikiAll2HTML<CR>
augroup END
