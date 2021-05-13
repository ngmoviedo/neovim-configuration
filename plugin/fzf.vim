" Enable preview window
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --preview 'bat --color=always --style=plain --line-range :300 {}'"

" Margins
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }

" Keymaps
map <silent><F2> :Files<CR>
map <silent><F3> :Rg<CR>

