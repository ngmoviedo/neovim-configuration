-- Autopairs
require('nvim-autopairs').setup()

local Rule = require('nvim-autopairs.rule')
local cond = require('nvim-autopairs.conds')
local npairs = require('nvim-autopairs')

-- LaTeX
--- Compatibility with snippets
npairs.get_rule('('):with_pair(cond.not_before_regex_check("\\"))

npairs.get_rule('['):with_pair(cond.not_before_regex_check("\\"))

npairs.get_rule('{'):with_pair(cond.not_before_regex_check("\\"))

--- Specific pairs
npairs.add_rules({
    Rule("$", "$", {"tex", "latex", "pandoc", "markdown"}),
    Rule('\\left(', '\\right)', {"tex", "latex"}),
    Rule('\\left[', '\\right]', {"tex", "latex"}),
    Rule('\\left\\{', '\\right\\}', {"tex", "latex"}),
    Rule('\\left\\langle', '\\right\\rangle', {"tex", "latex"}),
    Rule('\\langle', '\\rangle', {"tex", "latex"}),
    Rule('\\|', '\\|', {"tex", "latex"}),
    Rule('*', '*', {"pandoc", "markdown"})
})
