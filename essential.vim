augroup vim_essential
  autocmd!
  autocmd BufEnter,FocusGained * checktime
  autocmd BufWritePre * let &backupext = ".backup-" .. strftime("%Y%m%d")
  autocmd FocusLost * silent! wall
  autocmd TerminalWinOpen * setlocal nonumber norelativenumber
augroup END
