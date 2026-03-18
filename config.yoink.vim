let g:yoinkMaxItems = 8
let g:yoinkSyncNumberedRegisters = v:false
let g:yoinkIncludeDeleteOperations = v:true
let g:yoinkAutoFormatPaste = v:false
let g:yoinkMoveCursorToEndOfPaste = v:false
let g:yoinkSyncSystemClipboardOnFocus = v:false

nmap <C-N> <Plug>(YoinkPostPasteSwapBack)
nmap <C-P> <Plug>(YoinkPostPasteSwapForward)
nmap p <Plug>(YoinkPaste_p)
nmap P <Plug>(YoinkPaste_P)
nmap gp <Plug>(YoinkPaste_gp)
nmap gP <Plug>(YoinkPaste_gP)
nmap [s <Plug>(YoinkRotateBack)
nmap ]s <Plug>(YoinkRotateForward)
nmap y <Plug>(YoinkYankPreserveCursorPosition)
xmap y <Plug>(YoinkYankPreserveCursorPosition)
