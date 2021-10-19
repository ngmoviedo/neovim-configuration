if vim.fn.exists('g:vscode')==0 then

-- Init
require'nvim-tree'.setup {
    disable_netrw   = false,
    hijack_netrw    = false,
}

-- Keybindings
vim.api.nvim_set_keymap('n', '<F1>', '<Cmd>NvimTreeToggle<CR>', {noremap = true, silent = true})

end

