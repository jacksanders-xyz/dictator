-- NORMAL MODE REMAPS
local numbers_glyphs = require('dictator.SCORE_MODE_MODULES.GLYPHS.NUMBERS.numbers_glyphs')
local black_noteheads = require('dictator.SCORE_MODE_MODULES.GLYPHS.NOTES.black_noteheads')
local whole_notes = require('dictator.SCORE_MODE_MODULES.GLYPHS.NOTES.whole_notes')
local half_notes = require('dictator.SCORE_MODE_MODULES.GLYPHS.NOTES.half_notes')
local quarter_notes = require('dictator.SCORE_MODE_MODULES.GLYPHS.NOTES.quarter_notes')
local eighth_notes = require('dictator.SCORE_MODE_MODULES.GLYPHS.NOTES.eighth_notes')
local sixteenth_notes = require('dictator.SCORE_MODE_MODULES.GLYPHS.NOTES.sixteenth_notes')
local thirtysecond_notes = require('dictator.SCORE_MODE_MODULES.GLYPHS.NOTES.thirtysecond_notes')
local chords = require('dictator.SCORE_MODE_MODULES.GLYPHS.CHORDS.chords')
local sharps = require('dictator.SCORE_MODE_MODULES.GLYPHS.ACCIDENTALS.sharps')
local flats = require('dictator.SCORE_MODE_MODULES.GLYPHS.ACCIDENTALS.flats')
local naturals = require('dictator.SCORE_MODE_MODULES.GLYPHS.ACCIDENTALS.naturals')
local doublesharps = require('dictator.SCORE_MODE_MODULES.GLYPHS.ACCIDENTALS.doublesharps')
local doubleflats = require('dictator.SCORE_MODE_MODULES.GLYPHS.ACCIDENTALS.doubleflats')
local rests = require('dictator.SCORE_MODE_MODULES.GLYPHS.RESTS.rests')
-- local ties = require('dictator.SCORE_MODE_MODULES.GLYPHS.TIES.ties')
local controllers_switches_routers = require('dictator.SCORE_MODE_MODULES.GLYPHS.controllers_switches_routers')
local clefs_staffs_barlines = require('dictator.SCORE_MODE_MODULES.GLYPHS.clefs_staffs_barlines')
-- VIUAL MODE REMAPS
local time_changer = require('dictator.SCORE_MODE_MODULES.VISUAL_MODE_MAPS.time_changer')

-- VISUAL MODE REMAPS
local collect_visual_tables = {
    time_changer
}
local collect_normal_tables = {
    numbers_glyphs,
    black_noteheads,
    whole_notes,
    half_notes,
    quarter_notes,
    eighth_notes,
    sixteenth_notes,
    thirtysecond_notes,
    chords,
    sharps,
    flats,
    doublesharps,
    doubleflats,
    naturals,
    rests,
    controllers_switches_routers,
    clefs_staffs_barlines,
}

local MasterTable = {
    ['n'] = {},
    ['v'] = {},
    ['i'] = {
        ['<C-q>'] = {
        ['rhs'] = '<Esc>',
        ['noremap'] = true
      }
    },
}
for table,tableValue in pairs(collect_normal_tables) do
  for key,value in pairs(tableValue) do
    MasterTable['n'][key] = value
  end
end
for table,tableValue in pairs(collect_visual_tables) do
  for key,value in pairs(tableValue) do
    MasterTable['v'][key] = value
  end
end
return MasterTable
