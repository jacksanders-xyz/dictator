local activeMap = require('dictator.SCORE_MODE_MODULES.MODE_MAPS.scoreMaps')
local table_copy = require('dictator.SCORE_MODE_MODULES.UTILITY_FUNCTIONS.table_copy')
local runningMap2 = table_copy(activeMap['n'])

return function(score_layer)
    -- vim.g.MI = runningMap2
    -- vim.api.nvim_command("echom g:MI")
    for key, value in pairs(runningMap2) do
        score_layer:unmap('n', key)
    end
    -- vim.g.MI = score_layer
    -- vim.api.nvim_command("echom g:MI")
    -- return score_layer
end
