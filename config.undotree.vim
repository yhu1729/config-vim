let g:undotree_WindowLayout = 4
let g:undotree_SplitWidth = 28
let g:undotree_DiffpanelHeight = 16
let g:undotree_DiffAutoOpen = v:true
let g:undotree_SetFocusWhenToggle = v:true
let g:undotree_TreeNodeShape = "."
let g:undotree_TreeReturnShape = '\'
let g:undotree_TreeVertShape = "|"
let g:undotree_TreeSplitShape = "/"
let g:undotree_DiffCommand = "diff"
let g:undotree_RelativeTimestamp = v:true
let g:undotree_ShortIndicators = v:true
let g:undotree_HighlightChangedText = v:true
let g:undotree_HelpLine = v:false
let g:undotree_CursorLine = v:false
let g:undotree_DisabledFiletypes = []

augroup package_undotree
  autocmd!
  autocmd ColorScheme *
  \ hi! link UndotreeBranch Normal |
  \ hi! link UndotreeCurrent Normal |
  \ hi! link UndotreeFirstNode Normal |
  \ hi! link UndotreeHead Normal |
  \ hi! link UndotreeNext Normal |
  \ hi! link UndotreeNode Normal |
  \ hi! link UndotreeNodeCurrent Normal |
  \ hi! link UndotreeSavedBig Normal |
  \ hi! link UndotreeSavedSmall Normal |
  \ hi! link UndotreeSeq Normal |
  \ hi! link UndotreeTimeStamp Normal
augroup END

nnoremap <C-U> <Cmd>UndotreeToggle<CR>
