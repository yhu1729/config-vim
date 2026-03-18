augroup color_all
  autocmd!
  autocmd ColorScheme *
  \ hi  clear ColorColumn |
  \ hi        ColorColumn ctermfg=15 ctermbg=0 |
  \ hi  clear Comment |
  \ hi        Comment ctermfg=12 |
  \ hi! link  CurSearch Search |
  \ hi  clear Cursor |
  \ hi        Cursor cterm=reverse |
  \ hi! link  CursorLineNr CursorLine |
  \ hi! link  IncSearch Search |
  \ hi! link  LineNr Normal |
  \ hi  clear MatchParen |
  \ hi        MatchParen cterm=bold ctermfg=15 ctermbg=12 |
  \ hi  clear Pmenu |
  \ hi        Pmenu ctermfg=0 ctermbg=15 |
  \ hi  clear PmenuMatch |
  \ hi  clear PmenuMatchSel |
  \ hi  clear PmenuSbar |
  \ hi  clear PmenuSel |
  \ hi        PmenuSel ctermfg=15 ctermbg=0 |
  \ hi! link  PmenuThumb PmenuSbar |
  \ hi! link  QuickFixLine Normal |
  \ hi  clear Search |
  \ hi        Search cterm=bold ctermfg=15 ctermbg=12 |
  \ hi  clear StatusLine |
  \ hi  clear StatusLineNC |
  \ hi! link  StatusLineNC StatusLine |
  \ hi! link  StatusLineTerm StatusLine |
  \ hi! link  StatusLineTermNC StatusLine |
  \ hi  clear TabLine |
  \ hi        TabLine ctermfg=0 ctermbg=15 |
  \ hi  clear TabLineSel |
  \ hi        TabLineSel ctermfg=15 ctermbg=0 |
  \ hi! link  Terminal Normal |
  \ hi  clear Visual |
  \ hi        Visual ctermfg=15 ctermbg=0
  \
augroup END

let g:tempus_enforce_background_color = v:true

colorscheme tempus_day
