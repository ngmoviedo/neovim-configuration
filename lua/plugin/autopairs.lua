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
    Rule("$", "$", {"tex", "latex", "pandoc", "markdown"})
        :with_pair(cond.not_before_regex_check("\\"))
        :with_pair(cond.not_before_regex_check("[%w%.]"))
        :with_pair(cond.not_after_regex_check("[%w%.]")),
    Rule('\\left(', '\\right)', {"tex", "latex"})
        :with_pair(cond.not_after_regex_check("[%w%.]")),
    Rule('\\left[', '\\right]', {"tex", "latex"})
        :with_pair(cond.not_after_regex_check("[%w%.]")),
    Rule('\\left\\{', '\\right\\}', {"tex", "latex"})
        :with_pair(cond.not_after_regex_check("[%w%.]")),
    Rule('\\left\\langle', '\\right\\rangle', {"tex", "latex"})
        :with_pair(cond.not_after_regex_check("[%w%.]")),
    Rule('\\langle', '\\rangle', {"tex", "latex"})
        :with_pair(cond.not_after_regex_check("[%w%.]")),
    Rule('\\|', '\\|', {"tex", "latex"})
        :with_pair(cond.not_after_regex_check("[%w%.]")),
    Rule('*', '*', {"pandoc", "markdown"})
        :with_pair(cond.not_before_regex_check("\\"))
        :with_pair(cond.not_before_regex_check("[%w%.]"))
        :with_pair(cond.not_after_regex_check("[%w%.]")),
})
