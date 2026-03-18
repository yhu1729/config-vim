function Build()
  let l:result = "\<Cmd>silent! wall\<CR>"
  \ .. "\<Cmd>botright terminal bash build.sh\<CR>"
  if !filereadable('./build.sh')
    let l:result = ""
  endif

  return l:result
endfunction

nnoremap <expr> <C-B> Build()
