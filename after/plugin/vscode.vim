if exists('g:vscode')
    " Execute current line of Python code in interactive terminal
    " (visual selection are handled by VSCode keybindings: S-CR)
    nmap <space>e <Cmd>call VSCodeNotify('jupyter.execSelectionInteractive')<CR>

    " Set clipboard compatibility with OS registers (again)
    set clipboard=unnamedplus
end
