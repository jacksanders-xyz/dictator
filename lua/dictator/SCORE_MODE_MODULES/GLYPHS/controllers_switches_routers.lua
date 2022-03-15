return {
    ['<C-s>'] = {
      ['rhs'] = ':lua require("dictator").enter_SC()<CR>',
      ['noremap'] = true,
      ['silent'] = true
    },
    ['<C-k>'] = {
      ['rhs'] = ':lua require("dictator").enter_KP()<CR>',
      ['noremap'] = true,
      ['silent'] = true
    },
    ['<Esc>'] = {
      ['rhs'] = ':lua require("dictator").exit_SL()<CR>',
      ['noremap'] = true,
      ['silent'] = true
    },
   -- move fast
    ['L'] = {
      ['rhs'] = 'llllll',
      ['noremap'] = true,
      ['silent'] = true
    },
    ['H'] = {
      ['rhs'] = 'hhhhhh',
      ['noremap'] = true,
      ['silent'] = true
    },
    -- jump by note??
}

