let g:fugitive_no_maps = v:false

function ToggleGit()
  let l:flag_fugitive = (&filetype == "fugitive")
  if l:flag_fugitive
    return "\<Cmd>quit\<CR>"
  else
    return "\<Cmd>wall\<CR>\<Cmd>silent! topleft Git\<CR>"
  endif
endfunction
nnoremap <expr> <C-G> ToggleGit()

function ToggleGitCommit()
  let l:flag_gitcommit = (&filetype == "gitcommit")
  let l:flag_fugitive = (&filetype == "fugitive")
  if l:flag_gitcommit
    return "\<Cmd>wall\<CR>\<Cmd>quit\<CR>"
  elseif l:flag_fugitive
    return "\<Cmd>vertical Git commit\<CR>"
  else
    return "\<Cmd>Git commit\<CR>"
  endif
endfunction
nnoremap <expr> g<C-G> ToggleGitCommit()
