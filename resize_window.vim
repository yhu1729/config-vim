function ResizeWindowToFit()
  let l:target = max(map(range(1, line("$")), "col([v:val, '$'])"))
  let l:target = l:target + &numberwidth + 1
  return l:target .. "\<C-W>\|"
endfunction

nnoremap <expr> == ResizeWindowToFit()
