return {

    ['<leader>{'] = {
        ['rhs'] = ':lua require("dictator").chord_constructor("CC_3", "tri")<CR>',
        ['noremap'] = true
    },
    ['<leader>3'] = {
        ['rhs'] = ':lua require("dictator").chord_constructor("CC_3*U", "tri*U")<CR>',
        ['noremap'] = true
    },
    ['<leader>*{'] = {
        ['rhs'] = ':lua require("dictator").chord_constructor("CC_3**U", "tri**U")<CR>',
        ['noremap'] = true
    },

    ['<leader>)'] = {
        ['rhs'] = ':lua require("dictator").chord_constructor("CC_7", "sev")<CR>',
        ['noremap'] = true
    },
    ['<leader>7'] = {
        ['rhs'] = ':lua require("dictator").chord_constructor("CC_7*U", "sev*U")<CR>',
        ['noremap'] = true
    },
    ['<leader>*)'] = {
        ['rhs'] = ':lua require("dictator").chord_constructor("CC_7**U", "sev**U")<CR>',
        ['noremap'] = true
    },
}

