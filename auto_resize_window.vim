let g:window_auto_resize = v:false
function ToggleWindowAutoResize()
  let g:window_auto_resize = 1 - g:window_auto_resize
  let l:result = "\<Cmd>echo \"WindowAutoResize: "
  if g:window_auto_resize
    let l:result ..= "ON\"\<CR>"
  else
    let l:result ..= "OFF\"\<CR>"
  endif
  return l:result
endfunction

augroup window_resize
  autocmd!
  autocmd WinEnter *
  \ if g:window_auto_resize && (winwidth(0) < 80) |
  \   wincmd = |
  \   vertical resize 80 |
  \ endif
augroup END

nnoremap <expr> <Leader>r ToggleWindowAutoResize()
