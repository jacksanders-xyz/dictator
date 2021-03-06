local libmodal = require('libmodal')
local popup = require("plenary.popup")

local scoreMaps = require('dictator.SCORE_MODE_MODULES.MODE_MAPS.scoreMaps')

local staffConstructorMaps = require('dictator.SCORE_MODE_MODULES.MODE_MAPS.staffConstructorMaps')
local keyPickerMaps = require('dictator.SCORE_MODE_MODULES.MODE_MAPS.keyPickerMaps')

local unMap = require('dictator.SCORE_MODE_MODULES.UTILITY_FUNCTIONS.unMap')
local reMap = require('dictator.SCORE_MODE_MODULES.UTILITY_FUNCTIONS.reMap')
local table_copy = require('dictator.SCORE_MODE_MODULES.UTILITY_FUNCTIONS.table_copy')

local runningMap = table_copy(scoreMaps)
local modeIdentifier = 'score'
local api = vim.api
local score_layer = libmodal.Layer.new(runningMap)
local key_picker = libmodal.Prompt.new('KEY PICKER', keyPickerMaps)

local function talk()
  vim.g.M3 = "hellooo"
  api.nvim_command("echom g:M3")
end

local function handlerFunction()
  if(modeIdentifier == 'score')
    then
        score_layer:enter()
    elseif(modeIdentifier == 'key_picker')
    then
        -- libmodal.prompt.enter('KEY PICKER', keyPickerMaps)
        key_picker:enter()
  elseif(modeIdentifier == 'staff_constructor')
    then
      libmodal.mode.enter('STAFF', staffConstructorMaps, true)
    end
end

local function create_cw()
    local width = 60
    local height = 10
    local borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" }
    local bufnr = api.nvim_create_buf(false, false)
    local Chord_win_id, win = popup.create(bufnr, {
        title = "Chord",
        highlight = "ChordWindow",
        line = math.floor(((vim.o.lines - height) / 2) - 1),
        col = math.floor((vim.o.columns - width) / 2),
        minheight = height,
        minwidth = width,
        borderchars = borderchars,
    })

    api.nvim_win_set_option(
        win.border.win_id,
        "winhl",
        "Normal:ChordBorder"
    )

    return {
        bufnr = bufnr,
        win_id = Chord_win_id,
    }
end

local function close_menu()
    api.nvim_win_close(Chord_win_id, true)
    Chord_win_id = nil
    Chord_bufh = nil
end

local function toggle_fwin(chord_id)
    if Chord_win_id ~= nil and api.nvim_win_is_valid(Chord_win_id) then
        close_menu()
        return
    end

    local win_info = create_cw()
    local contents = {}
    contents[1] = chord_id
    Chord_win_id = win_info.win_id
    Chord_bufh = win_info.bufnr

    api.nvim_win_set_option(Chord_win_id, "number", true)
    api.nvim_buf_set_name(Chord_bufh, "chord_menu")
    api.nvim_buf_set_lines(Chord_bufh, 0, #contents, false, contents)
    api.nvim_buf_set_option(Chord_bufh, "filetype", "vimwiki")
    -- api.nvim_buf_set_option(Chord_bufh, "buftype", "acwrite")
    api.nvim_buf_set_option(Chord_bufh, "bufhidden", "delete")
    api.nvim_buf_set_keymap(
        Chord_bufh,
        "n",
        "q",
        ":lua require('dictator').toggle_fwin()<CR>",
        { silent = true }
    )
end

 -- "mz:\b\b\b\b\bsilent execute ':lua vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(\":\\<c-u>%s/\\%V/"

local function resetToScore(space_id)
    api.nvim_command('lua vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-c>:norm! <esc>",true,false,true),"m",true)')
    vim.g.LastChord = space_id
    -- api.nvim_command("echom g:LastChord")
end

local function chord_constructor(chord_id, space_id)
  local space_lookup = {

        ["tri"] = "j<c-v>4klP<c-c>3jh',true,false,true),'m',true)",
        ["tri*U"] = "j<c-v>4klP<c-c>3jh',true,false,true),'m',true)",
        ["tri**U"] = "j<c-v>4klP<c-c>3jh',true,false,true),'m',true)",

        ["tI1"] = "j<c-v>4klP<c-c>3jh',true,false,true),'m',true)",
        ["tI1*U"] = "j<c-v>4klP<c-c>3jh',true,false,true),'m',true)",
        ["tI1**U"] = "j<c-v>4klP<c-c>3jh',true,false,true),'m',true)",

        ["tI2"] = "j<c-v>4klP<c-c>3jh',true,false,true),'m',true)",
        ["tI2*U"] = "j<c-v>4klP<c-c>3jh',true,false,true),'m',true)",
        ["tI2**U"] = "j<c-v>4klP<c-c>3jh',true,false,true),'m',true)",

        ["sev"] = "j<c-v>4klP<c-c>3jl',true,false,true),'m',true)",
        ["sev*U"] = "j<c-v>4klP<c-c>3j',true,false,true),'m',true)",
        ["sev**U"] = "j<c-v>4klP<c-c>3j',true,false,true),'m',true)",

        -- these differ, they are a triad from the snippets and an added note:
        ["sI1"] = "j<c-v>4klP<c-c>3jhhknkjl',true,false,true),'m',true)",
        ["sI1*U"] = "j<c-v>4klP<c-c>3jhh2knjjjl',true,false,true),'m',true)",
        ["sI1**U"] = "j<c-v>5klP<c-c>4jhh2knnljj',true,false,true),'m',true)",

        ["sI2"] = "j<c-v>4klP<c-c>3jhhknjjl',true,false,true),'m',true)",
        ["sI2*U"] = "j<c-v>4klP<c-c>3jhhknnjl',true,false,true),'m',true)",
        ["sI2**U"] = "j<c-v>4klP<c-c>3jhhknkj2l',true,false,true),'m',true)",

        ["sI3"] = "j<c-v>4klP<c-c>3jhhjn3kklll',true,false,true),'m',true)",
        ["sI3*U"] = "j<c-v>4klP<c-c>3jhhkn2jjl',true,false,true),'m',true)",
        ["sI3**U"] = "<c-v>4klP<c-c>3jhhnjjll',true,false,true),'m',true)",
  }
    toggle_fwin(chord_id)
    -- you're at the top of the buffer, in visual selection mode
    local Action = "lua vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('A<tab><c-c>gg0<c-v>}$yq<c-c>"
    Action = Action..space_lookup[space_id]
    api.nvim_command(Action)
    resetToScore(space_id)
end

-- local function key_constructor(key_id)
    -- local Action = "lua vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('"
    -- Action = Action..space_lookup[key_id].."',true,false,true),'m',true)"
    -- api.nvim_command(Action)
-- end


local function set_coordinates()
  api.nvim_command("set cursorline")
  api.nvim_command("set cursorcolumn")
end

local function kill_coordinates()
  api.nvim_command("set nocursorline")
  api.nvim_command("set nocursorcolumn")
end

local function exit_SL()
    -- unMap(score_layer)
    -- local runningMap2 = table_copy(scoreMaps['n'])
    --     for key, value in pairs(runningMap2) do
    --         score_layer:unmap('n', key)
    --     end
    -- end
    score_layer:exit()
    vim.g.libmodalLayerActive = 0
    api.nvim_command("set colorcolumn=")
end

local function re_entry_SL()
    -- reMap(score_layer)
    vim.g.libmodalLayerActive = 1
    score_layer:enter()
    api.nvim_command("set colorcolumn=149")
end

  -- key_picker:exit()
  -- modeIdentifier = 'score'
  -- handlerFunction()
-- end

local function enter_KP()
  modeIdentifier = 'key_picker'
  handlerFunction()
end

local function enter_SC()
  modeIdentifier = 'staff_constructor'
  set_coordinates()
  vim.g.staffModeExit = false
  handlerFunction()
  -- kill_coordinates()
end

local function exit_SC()
  vim.g.staffModeExit = true
  modeIdentifier = 'score'
  kill_coordinates()
  -- handlerFunction()
end

local function snip_builder_func(staff_instruction)
  local string_prep = "lua vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('q:norm i"..staff_instruction
  -- local string_prep = "lua vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('q',true,false,true),'m',true)"
  string_prep = string_prep.."<cr>A<tab>',true,false,true),'m',true)"
  api.nvim_command(string_prep)
end

local function begin_SM()
    api.nvim_command("set colorcolumn=149")
    vim.g.libmodalLayerActive = 1
    handlerFunction()
end

return {
    handlerFunction = handlerFunction,
    create_cw = create_cw,
    close_menu = close_menu,
    toggle_fwin = toggle_fwin,
    chord_constructor = chord_constructor,
    -- key_constructor = key_constructor,
    set_coordinates = set_coordinates,
    kill_coordinates = kill_coordinates,
    exit_SL = exit_SL,
    re_entry_SL = re_entry_SL,
    -- exit_KP = exit_KP,
    enter_KP = enter_KP,
    enter_SC = enter_SC,
    exit_SC = exit_SC,
    snip_builder_func = snip_builder_func,
    begin_SM = begin_SM,
    talk = talk
}
