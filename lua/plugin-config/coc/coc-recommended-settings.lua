-- Some servers have issues with backup files, see #649.
vim.o.backup = false
vim.o.writebackup = false

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.o.updatetime = 300

-- Don't pass messages to |ins-completion-menu|.
vim.o.shortmess = 'c'

-- Always show the signcolumn, otherwise it would shift the text each time
-- diagnostics appear/become resolved.
if vim.fn.has('patch-8.1.1564') then
	--
	vim.o.signcolumn = 'number'
else
	vim.o.signcolumn = 'yes'
end

-- Add (Neo)Vim's native statusline support.
-- NOTE: Please see `:h coc-status` for integrations with external plugins that
-- provide custom statusline: lightline.vim, vim-airline.
--set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
vim.o.statusline = vim.o.statusline .. '%{coc#status()}'
