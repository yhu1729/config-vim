let g:switch_mapping = "-"
let g:switch_reverse_mapping = ""
let g:switch_custom_definitions = [
\   {
\     '\C\<true\>': "false",
\     '\C\<false\>': "true",
\   },
\   {
\     '\C\<True\>': "False",
\     '\C\<False\>': "True",
\   },
\   {
\     '\C\<TRUE\>': "FALSE",
\     '\C\<FALSE\>': "TRUE",
\   },
\   {
\     '\C\<Yes\>': "No",
\     '\C\<No\>': "Yes",
\   },
\   {
\     '\C\<ON\>': "OFF",
\     '\C\<OFF\>': "ON",
\   },
\   {
\     '\C\<const\>': "var",
\     '\C\<var\>': "const",
\   },
\ ]
let g:switch_no_builtins = v:true
let g:switch_find_smallest_match = v:false
