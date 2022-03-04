local promptStart = ":\b\b\b\b\bexec ':lua vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(\":\\<c-u>%s/\\%V/"
local promptEnd = "/g\",true,false,true),\"m\",true)'\r"
local whole_note = ""

local string_table = {
    ['NtoWhole'] = promptStart..whole_note..promptEnd,
}


return {
    ['W'] = {
        ['rhs'] = string_table['NtoWhole'],
        ['noremap'] = true
    }
}
