if exists('g:vscode')
    " Execute Python code
    nmap <space>e <Cmd>call VSCodeNotify('jupyter.execSelectionInteractive')<CR>
end
