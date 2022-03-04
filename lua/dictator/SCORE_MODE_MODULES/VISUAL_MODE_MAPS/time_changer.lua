-- CHANGE THE TIME OF NOTES WITH VISUAL BLOCK MODE
local promptStart = ":\b\b\b\b\bsilent execute ':lua vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(\":\\<c-u>%s/\\%V/"
local promptEnd = "/g\",true,false,true),\"m\",true)'\r"

local whole_note = ""

local HalfNote = ""

local QuarterNote = ""

local EighthNote = ""

local SixteenthNote = ""


local string_table = {
    ['NtoWhole'] = promptStart..whole_note..promptEnd,
    ['NtoHalf'] = promptStart..HalfNote..promptEnd,
    ['NtoQuarter'] = promptStart..QuarterNote..promptEnd,
    ['NtoEighth'] = promptStart..EighthNote..promptEnd,
    ['NtoSixteenth'] = promptStart..SixteenthNote..promptEnd,
}



return {
    ['W'] = {
        ['rhs'] = string_table['NtoWhole'],
        ['noremap'] = true
    },
    ['H'] = {
        ['rhs'] = string_table['NtoHalf'],
        ['noremap'] = true
    },
    ['N'] = {
        ['rhs'] = string_table['NtoQuarter'],
        ['noremap'] = true
    },
    ['E'] = {
        ['rhs'] = string_table['NtoEighth'],
        ['noremap'] = true
    },
    ['S'] = {
        ['rhs'] = string_table['NtoSixteenth'],
        ['noremap'] = true
    },
}
