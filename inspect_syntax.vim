function InspectSyntax()
  for id in synstack(line('.'), col('.'))
    echo synIDattr(id, 'name') . '/' . synIDattr(synIDtrans(id), 'name')
  endfor
endfunction

command! InspectSyntax call InspectSyntax()
