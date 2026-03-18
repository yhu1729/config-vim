let g:targets_aiAI = "aiAI"
let g:targets_mapped_aiAI = "aiAI"
let g:targets_nl = "nN"
let g:targets_seekRanges = "cc cr cb cB lc ac Ac lr lb ar ab lB Ar aB Ab AB"
let g:targets_jumpRanges = "rr rb rB bb bB BB ll al Al aa Aa AA"
let g:targets_gracious = v:true

augroup package_targets
  autocmd!
  autocmd User targets#mappings#user
  \ call targets#mappings#extend({
  \   ".": {},
  \   ";": {},
  \   ":": {},
  \   "+": {},
  \   "-": {},
  \   "=": {},
  \   "~": {},
  \   "_": {},
  \   "*": {},
  \   "#": {},
  \   "/": {},
  \   '\': {},
  \   "$": {},
  \   "a": {
  \     "argument": [ { "o": '[{([]', "c": '[])}]', "s": ',' } ]
  \   },
  \ })
augroup END
