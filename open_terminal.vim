function OpenTerminal()
  return "\<Cmd>silent! wall\<CR>" .. "\<Cmd>horizontal terminal\<CR>"
endfunction

nnoremap <expr> <silent> <Leader>t OpenTerminal()
