-- Disable all of UltiSnip's default mappings
vim.g.UltiSnipsExpandTrigger = "<NUL>"
vim.g.UltiSnipsListSnippets = "<NUL>"
vim.g.UltiSnipsJumpForwardTrigger = "<NUL>"
vim.g.UltiSnipsJumpBackwardTrigger = "<NUL>"
local keymap=vim.api.nvim_set_keymap

-- Compe (autocompletion) mappings
keymap('i', '<C-Space>', [[compe#complete()]], {noremap=true, silent=true, expr=true})
-- Make compe#complete compatible with pear-tree
keymap('i', '<CR>', [[compe#confirm({ 'keys': "\<Plug>(PearTreeExpand)", 'mode': '' })]], {noremap=true, silent=true, expr=true})
keymap('i', '<C-e>', [[compe#close('<C-e>')]], {noremap=true, silent=true, expr=true})




-- Use (shift-)tab to:
--- move to prev/next item in completion menu
--- jump to the prev/next snippet placeholder
--- insert a simple tab
--- cycle through the completion menu

local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

_G.tab_completion = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-n>"
  elseif vim.fn["UltiSnips#CanExpandSnippet"]() == 1 or vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
    return  t "<C-R>=UltiSnips#ExpandSnippetOrJump()<CR>"
  elseif check_back_space() then
    return t "<Tab>"
  else
    return vim.fn['compe#complete']()
  end
end

_G.shift_tab_completion = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  elseif vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
    return t "<C-R>=UltiSnips#JumpBackwards()<CR>"
  else
    return t "<S-Tab>"
  end
end

keymap('i', "<Tab>", 'v:lua.tab_completion()', {expr = true})
keymap('s', "<Tab>", 'v:lua.tab_completion()', {expr = true})
keymap('i', "<S-Tab>", 'v:lua.shift_tab_completion()', {expr = true})
keymap('s', "<S-Tab>", 'v:lua.shift_tab_completion()', {expr = true})
