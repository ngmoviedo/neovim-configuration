" Main settings
let g:firenvim_config = { 
    \ 'localSettings': {
    \   '.*': {
    \       'cmdline': 'neovim', 
    \   },
    \ 'https://www.overleaf.com/*': {
    \   'takeover': 'never',
    \   }
    \ }
\ }

" On UI enter, so it gets set after other things
function! s:IsFirenvimActive(event) abort
  if !exists('*nvim_get_chan_info')
    return 0
  endif
  let l:ui = nvim_get_chan_info(a:event.chan)
  return has_key(l:ui, 'client') && has_key(l:ui.client, 'name') &&
      \ l:ui.client.name =~? 'Firenvim'
endfunction

function! OnUIEnter(event) abort
  if s:IsFirenvimActive(a:event)
    set laststatus=0 " Disable statusline
    set showtabline=0 " Disable tab bar
  endif
endfunction
autocmd UIEnter * call OnUIEnter(deepcopy(v:event))
