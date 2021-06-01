if exists('g:started_by_firenvim')
    set laststatus=0
    set showtabline=0
    let g:firenvim_config = { 
        \ 'localSettings': {
            \ '.*': {
                \ 'cmdline': 'neovim',
            \ },
            \ 'https://www.overleaf.com/*': {
                \ 'takeover': 'never',
            \}
        \ }
    \ }
endif
