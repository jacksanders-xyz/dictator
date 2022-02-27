return {
-- triads
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

-- triad first inversion
    ['<leader>={'] = {
        ['rhs'] = ':lua require("dictator").chord_constructor("CC_63", "tI1")<CR>',
        ['noremap'] = true
    },
    ['<leader>63'] = {
        ['rhs'] = ':lua require("dictator").chord_constructor("CC_63*U", "tI1*U")<CR>',
        ['noremap'] = true
    },
    ['<leader>*={'] = {
        ['rhs'] = ':lua require("dictator").chord_constructor("CC_63**U", "tI1**U")<CR>',
        ['noremap'] = true
    },

-- triad second inversion
    ['<leader>=('] = {
        ['rhs'] = ':lua require("dictator").chord_constructor("CC_64", "tI2")<CR>',
        ['noremap'] = true
    },
    ['<leader>64'] = {
        ['rhs'] = ':lua require("dictator").chord_constructor("CC_64*U", "tI2*U")<CR>',
        ['noremap'] = true
    },
    ['<leader>*=('] = {
        ['rhs'] = ':lua require("dictator").chord_constructor("CC_64**U", "tI2**U")<CR>',
        ['noremap'] = true
    },

-- sevenths
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

-- sevenths first inversion, going to start from the 63 and add the fifth separately
    ['<leader>=&'] = {
        ['rhs'] = ':lua require("dictator").chord_constructor("CC_63", "sI1")<CR>',
        ['noremap'] = true
    },
    ['<leader>65'] = {
        ['rhs'] = ':lua require("dictator").chord_constructor("CC_63*U", "sI1*U")<CR>',
        ['noremap'] = true
    },
    ['<leader>*=&'] = {
        ['rhs'] = ':lua require("dictator").chord_constructor("CC_63**U", "sI1**U")<CR>',
        ['noremap'] = true
    },







}











