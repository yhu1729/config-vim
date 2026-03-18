" normal
nnoremap : ,
nnoremap , :
nnoremap * :keepjumps normal! mi*`i<CR>zz
nnoremap g* :keepjumps normal! mig*`i<CR>zz
nnoremap Y y$
nnoremap gR <Nop>
nnoremap <expr> j &wrap ? "gj" : "j"
nnoremap <expr> k &wrap ? "gk" : "k"
nnoremap z+ <Nop>
nnoremap z- <Nop>
nnoremap z. <Nop>
nnoremap z^ <Nop>
nnoremap zD <Nop>
nnoremap zd <Nop>
nnoremap zm <Nop>
nnoremap zr <Nop>
nnoremap <BS> <C-O>
nnoremap <Tab> <C-I>
nnoremap <CR> zt
nnoremap <Space> <Nop>
nnoremap <Leader><CR> zb
nnoremap <Leader><Space> zz
nnoremap <Leader>c <Cmd>tabclose!<CR>
nnoremap <Leader>w <Cmd>wall<CR><C-W>c
nnoremap <Leader>z <Cmd>wall<CR><Cmd>qall<CR>
nnoremap <C-[> <Nop>
nnoremap <C-A> <Nop>
nnoremap <C-D> <C-A>
nnoremap <C-E> <Nop>
nnoremap <C-F> <Nop>
nnoremap <C-H> 3<C-Y>
nnoremap <C-J> <C-D>
nnoremap <C-K> <C-U>
nnoremap <C-L> 3<C-E>
nnoremap <C-O> <Cmd>nohlsearch<CR>
nnoremap <C-W><C-[> <Nop>
nnoremap <C-W><C-]> <Nop>
nnoremap <C-W>; <Cmd>tabmove -1<CR>
nnoremap <C-W>' <Cmd>tabmove +1<CR>
nnoremap <C-W><C-P> <Nop>
nnoremap <C-W><C-W> <C-W><C-P>
nnoremap <C-Y> <Nop>
nnoremap <C-Z> <Nop>

" visual
xnoremap : ,
xnoremap , :
xnoremap < <gv
xnoremap > >gv
xnoremap / y/\V<C-r>=escape(@",'/\')<CR><CR>
xnoremap g<C-D> g<C-A>
xnoremap gr <Nop>
xnoremap <expr> j &wrap ? "gj" : "j"
xnoremap <expr> k &wrap ? "gk" : "k"
xnoremap z^ <Nop>
xnoremap z- <Nop>
xnoremap z+ <Nop>
xnoremap z. <Nop>
xnoremap zd <Nop>
xnoremap zm <Nop>
xnoremap zr <Nop>
xnoremap zD <Nop>
xnoremap <CR> <Nop>
xnoremap <C-A> <Nop>
xnoremap <C-B> <Nop>
xnoremap <C-D> <C-A>
xnoremap <C-E> <Nop>
xnoremap <C-F> <Nop>
xnoremap <C-H> 3<C-Y>
xnoremap <C-J> <C-D>
xnoremap <C-K> <C-U>
xnoremap <C-L> 3<C-E>
xnoremap <C-U> <Nop>
xnoremap <C-Y> <Nop>
xnoremap <C-Z> <Nop>

" insert
inoremap <C-Space> <Nop>
inoremap <C-@> <Nop>
inoremap <C-F> <C-X><C-F>
inoremap <C-O> <C-X><C-O>
inoremap <C-U> <C-G>u<C-U>
inoremap <C-W> <C-G>u<C-W>

" command-line
cnoremap <expr> <C-N> wildmenumode() ? "\<C-P>" : "\<Up>"
cnoremap <expr> <C-P> wildmenumode() ? "\<C-N>" : "\<Down>"

" terminal
tnoremap <C-W><C-]> <Nop>

" normal,visual,select,operator-pending
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" insert,command-line
noremap! <Up> <Nop>
noremap! <Down> <Nop>
noremap! <Left> <Nop>
noremap! <Right> <Nop>

" t_q
function EmitQ()
  if &buftype == "terminal"
    return "\<Cmd>quit\<CR>"
  else
    return "q"
  endif
endfunction
nnoremap <expr> q EmitQ()

" i_jf
let g:history_j = []
function InsertEscape()
  let l:delay = 250
  let l:line = getline(".")
  let l:flag_j = (line[col(".") - 2] == "j")
  let l:time_elapsed = reltime(g:history_j)
  let l:flag_escape = (reltimefloat(l:time_elapsed) * 1000 < delay)
  if l:flag_j && l:flag_escape
    if match(l:line, '^\s\+j$') == 0
      return "\<Cmd>stopinsert\<CR>"
        \ .. "\<Cmd>call setline('.', '')\<CR>"
        " \ .. "\<Cmd>write\<CR>"
    else
      return "\b\<Cmd>stopinsert\<CR>"
        " \ .. "\<Cmd>write\<CR>"
    endif
  endif
  return "f"
endfunction
augroup keymap_i_jf
  autocmd!
  autocmd InsertCharPre *
  \ if v:char == "j" |
  \   let g:history_j = reltime() |
  \ endif
augroup END
inoremap <expr> f InsertEscape()
