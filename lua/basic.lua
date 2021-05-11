local set = vim.api.nvim_set_option
-- Don't show matching brackets
set('showmatch', false)
-- Do case insensitive matching
set('ignorecase', true)
-- Do smart case matching
set('smartcase', true)
-- Automatically save before commands like :next and :make
set('autowrite', true)
-- Hide buffers when they are abandoned
set('hidden', true)
-- Enable mouse usage (all modes)
set('mouse', 'a')
-- Always show at least one line above/below the cursor
set('scrolloff', 1)
-- Live preview for substitutions
set('inccommand', 'nosplit')

-- Jump to the last position when reopening
vim.api.nvim_exec([[
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
]], false)
