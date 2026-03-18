function RestoreCursor()
  let l:line = line("'\"")
  if (l:line >= 1)
    \ && (l:line <= line("$"))
    \ && (&filetype !~# "commit")
    \ && (index([ "xxd", "gitrebase" ], &filetype) == -1)
    execute "normal! g`\""
    execute "normal! zz"
  endif
endfunction

augroup restore_cursor
  autocmd!
  autocmd BufReadPost * call RestoreCursor()
augroup END
