augroup language_fortran
  autocmd!
  autocmd BufReadPre *.f90 {
    legacy let fortran_free_source = v:true
    legacy let fortran_have_tabs = v:false
  }
  autocmd BufReadPre *.f {
    legacy let fortran_fixed_source = v:true
    legacy let fortran_have_tabs = v:false
    setlocal colorcolumn=6,73
  }
augroup END
