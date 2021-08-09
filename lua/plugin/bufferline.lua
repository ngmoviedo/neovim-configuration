if vim.fn.exists('g:vscode')==0 then
require'bufferline'.setup{
    options = {
        diagnostics = "nvim_lsp";
	diagnostics_indicator = function(count, level)
           local icon = level:match("error") and " " or ""
           return " " .. icon .. count
	end
    },
}
end
