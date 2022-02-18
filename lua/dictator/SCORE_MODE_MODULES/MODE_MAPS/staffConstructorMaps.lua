return {
  ['w'] = 'bn',
  ['h'] = 'norm h',
  ['j'] = 'norm j',
  ['k'] = 'norm k',
  ['l'] = 'norm l',

  -- single snip opening
  ['sso'] = ":lua require('dictator').snip_builder_func('SC_sO_1')",

  -- single snip continuing
  ['ssc'] = ":lua require('dictator').snip_builder_func('SC_sC_2')",

  -- double snip opening
  ['dso'] = ":lua require('dictator').snip_builder_func('SC_dO_3')",

  -- double snip continuing
  ['dsc'] = ":lua require('dictator').snip_builder_func('SC_dC_4')",

  ['q'] = ':lua require("dictator").exit_SC()',
}

