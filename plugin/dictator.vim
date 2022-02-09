fun! ScoreModeStart()
  lua for k in pairs(package.loaded) do if k:match("^your%-first%-plugin") then package.loaded[k] = nil end end
  lua require("dictator")()
  " lua require("dictator").createFloatingWindow()
endfun

augroup YourFirstPlugin
  autocmd!
  " autocmd VimResized * :lua require("dictator").onResize()
augroup END
