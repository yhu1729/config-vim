function BeginObsession()
  return "\<Cmd>Obsession session.vim\<CR>"
  \ .. "\<Cmd>echo \"Obsession: ON\"\<CR>"
endfunction
nnoremap <expr> <silent> <Leader>o BeginObsession()

command ObsessionRestore silent source session.vim
