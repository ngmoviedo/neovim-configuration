if vim.fn.exists('g:vscode')==0 then
require('lualine').setup {
    options = {theme = 'dracula'},
    extensions = {'fugitive'},
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff'},
        lualine_c = {
            {'diagnostics', sources = {'nvim_diagnostic'}, color_warn = '#ffb86c'},
            -- Displays filename only when window is wider then 80
            {
                'filename',
                condition = function()
                    return vim.fn.winwidth(0) > 80
                end
            }
        },
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    }
}
end
