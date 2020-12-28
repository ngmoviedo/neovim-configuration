" ranger (rnvimr)
let g:rnvimr_action={'<C-t>': 'NvimEdit tabedit','<C-b>': 'NvimEdit split','<C-h>': 'NvimEdit vsplit','gw': 'JumpNvimCwd','yw': 'EmitRangerCwd'}
let g:rnvimr_enable_picker=1
nnoremap <silent> <F2> :RnvimrToggle<CR>
tnoremap <silent> <F2> <C-\><C-n>:RnvimrToggle<CR>

