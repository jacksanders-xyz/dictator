-- CHANGE THE TIME OF NOTES WITH VISUAL BLOCK MODE
local promptStart = "mz:\b\b\b\b\bsilent execute ':lua vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(\":\\<c-u>%s/\\%V/"
local promptEnd = "/g\",true,false,true),\"m\",true)'\r`z"

-- %s/\V//g

    -- search and replace HAS worked. maybe try one without a ligature?

local whole_note = ""

local HalfNoteDown = ""
local HalfNoteUp = ""
local HalfNoteEmpty = ""


local QuarterNoteUp = ""
local QuarterNoteDown = ""



local EighthNoteUp = ""
local EighthNoteDown = ""


local SixteenthNoteUp = ""
local SixteenthNoteDown = ""


local string_table = {
    ['NtoWhole'] = promptStart..whole_note..promptEnd,

    ['NtoHalfUp'] = promptStart..HalfNoteUp..promptEnd,
    ['NtoHalfDown'] = promptStart..HalfNoteDown..promptEnd,
    ['NtoHalfEmpty'] = promptStart..HalfNoteEmpty..promptEnd,

    ['NtoQuarterUp'] = promptStart..QuarterNoteUp..promptEnd,
    ['NtoQuarterDown'] = promptStart..QuarterNoteDown..promptEnd,

    ['NtoEighthUp'] = promptStart..EighthNoteUp..promptEnd,
    ['NtoEighthDown'] = promptStart..EighthNoteDown..promptEnd,

    ['NtoSixteenthUp'] = promptStart..SixteenthNoteUp..promptEnd,
    ['NtoSixteenthDown'] = promptStart..SixteenthNoteDown..promptEnd,
}



return {
    ['W'] = {
        ['rhs'] = string_table['NtoWhole'],
        ['noremap'] = true
    },
    ['Hu'] = {
        ['rhs'] = string_table['NtoHalfUp'],
        ['noremap'] = true
    },
    ['Hd'] = {
        ['rhs'] = string_table['NtoHalfDown'],
        ['noremap'] = true
    },
    ['He'] = {
        ['rhs'] = string_table['NtoHalfEmpty'],
        ['noremap'] = true
    },
    ['Nu'] = {
        ['rhs'] = string_table['NtoQuarterUp'],
        ['noremap'] = true
    },
    ['Nd'] = {
        ['rhs'] = string_table['NtoQuarterDown'],
        ['noremap'] = true
    },
    ['Eu'] = {
        ['rhs'] = string_table['NtoEighthUp'],
        ['noremap'] = true
    },
    ['Ed'] = {
        ['rhs'] = string_table['NtoEighthDown'],
        ['noremap'] = true
    },
    ['Su'] = {
        ['rhs'] = string_table['NtoSixteenthUp'],
        ['noremap'] = true
    },
    ['Sd'] = {
        ['rhs'] = string_table['NtoSixteenthDown'],
        ['noremap'] = true
    },
}
