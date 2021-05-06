-- Set up :make to use fish for syntax checking.
vim.cmd('compiler fish')

-- Set this to have long lines wrap inside comments.
vim.api.nvim_buf_set_option(0, 'textwidth', 79)

-- Enable folding of block structures in fish.
vim.api.nvim_win_set_option(0, 'foldmethod', "expr") -- Not sure why win works but buf doesn't
