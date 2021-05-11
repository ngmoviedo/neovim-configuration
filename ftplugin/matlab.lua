-- Compiler
vim.cmd('compiler mlint')

-- Commentary format
vim.api.nvim_buf_set_option(0, 'commentstring', [[% %s]])

--- Vim-Matlab-Behave configuration
-- Mappings
vim.g.matlab_mapping_kind = 1 -- set to 0 for default MATLAB mappings

-- Autoexecution of scripts
vim.g.matlab_behave_autoexec = 1
