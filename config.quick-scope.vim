let g:qs_highlight_on_keys = [ "f", "F", "t", "T" ]
let g:qs_buftype_blacklist = [ "terminal", "nofile" ]
let g:qs_filetype_blacklist = []
let g:qs_max_chars = 79
let g:qs_second_highlight = v:false
let g:qs_hi_priority = 20

augroup color_quickscope
  autocmd!
  autocmd ColorScheme * hi! link QuickScopePrimary Visual
augroup END
