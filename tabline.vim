function TablineLabel(n)
  let l:buffer_list = tabpagebuflist(a:n)
  let l:index_window = tabpagewinnr(a:n)

  return bufname(buffer_list[l:index_window - 1])
endfunction

function Tabline()
  let l:index_tab = tabpagenr()
  let l:n_tab = tabpagenr("$")
  let l:result = "%#TabLine#" .. printf(" %d/%d  ", l:index_tab, l:n_tab)

  let l:n_tab_page = tabpagenr("$")
  for l:index in range(l:n_tab_page)
    let l:result ..= "%#TabLine#"
    if l:index == 1
      let l:result ..= "|"
    endif
    if l:index + 1 == tabpagenr()
      let l:result ..= "%#TabLineSel#"
    else
      let l:result ..= "%#TabLine#"
    endif
    let l:result ..= " %{TablineLabel(" .. (l:index + 1) .. ")} "
  endfor
  let l:result ..= "%#TabLine#"

  return l:result
endfunction

set tabline=%!Tabline()
