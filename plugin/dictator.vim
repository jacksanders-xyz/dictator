fun! ScoreModeStart()
  lua for k in pairs(package.loaded) do if k:match("dictator") then package.loaded[k] = nil end end
  if exists('g:score_was_triggered')
    lua require("dictator").re_entry_SL()
  endif
  if !exists('g:score_was_triggered')
    let g:score_was_triggered = 1
    lua require("dictator").begin_SM()
  endif
endfun

augroup ScoreModeStart
  autocmd!
  " autocmd VimResized * :lua require("dictator").onResize()
augroup END
