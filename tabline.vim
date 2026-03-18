function Tabline()
  let l:result = "%#TabLine#"
  let l:buffer_list = uniq(tabpagebuflist())
  for l:buffer_id in l:buffer_list
    let l:buffer_type = getbufvar(l:buffer_id, "&buftype", "")
    if l:buffer_type == "nofile"
      continue
    endif
    if l:buffer_id == bufnr()
      let l:result ..= "%#TabLineSel# "
    else
      let l:result ..= "%#TabLine# "
    endif
    let l:buffer_name = "New"
    let l:buffer_name_component = split(bufname(l:buffer_id), "/")
    if len(l:buffer_name_component) > 0
      if l:buffer_id == bufnr()
        let l:buffer_name = join(l:buffer_name_component, "/")
      else
        for l:index in range(len(l:buffer_name_component) - 1)
          if l:buffer_name_component[l:index][0] == "."
            let l:buffer_name_component[l:index]
            \ = strpart(l:buffer_name_component[l:index], 0, 2)
          else
            let l:buffer_name_component[l:index]
            \ = strpart(l:buffer_name_component[l:index], 0, 1)
          endif
        endfor
        if l:buffer_type == "help"
          let l:buffer_name
          \ = "H:"
          \ .. l:buffer_name_component[len(l:buffer_name_component) - 1]
        elseif l:buffer_type == "terminal"
          let l:buffer_name
          \ = "T:"
          \ .. l:buffer_name_component[len(l:buffer_name_component) - 1]
        else
          let l:buffer_name = join(l:buffer_name_component, "/")
        endif
      endif
    endif
    let l:result ..= printf("%s ", l:buffer_name)
  endfor
  let l:result ..= "%#TabLine#%="

  let l:n_tab = tabpagenr("$")
  let l:tab_id = tabpagenr()
  let l:result ..= printf("%d/%d ", l:tab_id, l:n_tab)

  return l:result
endfunction

set tabline=%!Tabline()
