if has("patch-9.1.1230")
  let g:loaded_highlightedyank = v:true
  let g:hlyank_hlgroup = "Visual"
  let g:hlyank_duration = 500
  let g:hlyank_invisual = v:true

  packadd hlyank
else
  let g:highlightedyank_highlight_duration = 500
  let g:highlightedyank_max_lines = 64
  let g:highlightedyank_highlight_in_visual = v:true

  augroup package_highlightedyank
    autocmd!
    autocmd ColorScheme * hi! link HighlightedyankRegion CursorLine
  augroup END
endif
