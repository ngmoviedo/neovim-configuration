" Bad spelling highlight (red undercurl)
hi clear SpellBad
let &t_Cs = "\e[4:3m"
let &t_Ce = "\e[4:0m"
hi SpellBad     gui=undercurl guisp=red term=undercurl cterm=undercurl
