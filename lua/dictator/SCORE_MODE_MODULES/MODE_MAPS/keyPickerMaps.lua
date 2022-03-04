local promptStart =  "exec 'norm!' ':lua vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(\""
local promptEnd =  "\",true,false,true),\"m\",true)\r'"
local Up =  "k"
local twoUp =  "kk"
local d1r1 =  "jl"
local d2r1 =  "2jl"
local u2r1 =  "2kl"
local u1r1 =  "kl"

local sM = {}

sM['#n'] = 'vlc<esc>'


sM['#k'] = 'vlc<esc>'


sM['#j'] = 'vlc<esc>'


sM['bn'] = 'vlc<esc>'


sM['bk'] = 'vlc<esc>'


sM['bj'] = 'vlc<esc>'

return {
    ['CMaj treble'] = promptStart..promptEnd,
    ['GMaj treble'] = promptStart..twoUp..sM['#k']..promptEnd,
    ['DMaj treble'] = promptStart..twoUp..sM['#k']..d1r1..sM['#k']..promptEnd,
    ['AMaj treble'] = promptStart..twoUp..sM['#k']..d1r1..sM['#k']..u2r1..sM['#n']..promptEnd,
    ['EMaj treble'] = promptStart..twoUp..sM['#k']..d1r1..sM['#k']..u2r1..sM['#n']..d1r1..sM['#j']..promptEnd,
    ['BMaj treble'] = promptStart..twoUp..sM['#k']..d1r1..sM['#k']..u2r1..sM['#n']..d1r1..sM['#j']..d1r1..sM['#j']..promptEnd,
    ['F#Maj treble'] = promptStart..twoUp..sM['#k']..d1r1..sM['#k']..u2r1..sM['#n']..d1r1..sM['#j']..d1r1..sM['#j']..u1r1..sM['#n']..promptEnd,
    ['C#Maj treble'] = promptStart..twoUp..sM['#k']..d1r1..sM['#k']..u2r1..sM['#n']..d1r1..sM['#j']..d1r1..sM['#j']..u1r1..sM['#n']..d1r1..sM['#n']..promptEnd,
    ['FMaj treble'] = promptStart..Up..sM['bn']..promptEnd,
    ['BbMaj treble'] = promptStart..Up..sM['bn']..u1r1..sM['bn']..promptEnd,
    ['EbMaj treble'] = promptStart..Up..sM['bn']..u1r1..sM['bn']..d1r1..sM['bj']..promptEnd,
    ['AbMaj treble'] = promptStart..Up..sM['bn']..u1r1..sM['bn']..d1r1..sM['bj']..u1r1..sM['bj']..promptEnd,
    ['DbMaj treble'] = promptStart..Up..sM['bn']..u1r1..sM['bn']..d1r1..sM['bj']..u1r1..sM['bj']..d2r1..sM['bk']..promptEnd,
    ['GbMaj treble'] = promptStart..Up..sM['bn']..u1r1..sM['bn']..d1r1..sM['bj']..u1r1..sM['bj']..d2r1..sM['bk']..u1r1..sM['bk']..promptEnd,
    ['CbMaj treble'] = promptStart..Up..sM['bn']..u1r1..sM['bn']..d1r1..sM['bj']..u1r1..sM['bj']..d2r1..sM['bk']..u1r1..sM['bk']..d1r1..sM['bn']..promptEnd,

    ['amin treble'] = promptStart..promptEnd,
    ['emin treble'] = promptStart..twoUp..sM['#k']..promptEnd,
    ['bmin treble'] = promptStart..twoUp..sM['#k']..d1r1..sM['#k']..promptEnd,
    ['f#min treble'] = promptStart..twoUp..sM['#k']..d1r1..sM['#k']..u2r1..sM['#n']..promptEnd,
    ['c#min treble'] = promptStart..twoUp..sM['#k']..d1r1..sM['#k']..u2r1..sM['#n']..d1r1..sM['#j']..promptEnd,
    ['g#min treble'] = promptStart..twoUp..sM['#k']..d1r1..sM['#k']..u2r1..sM['#n']..d1r1..sM['#j']..d1r1..sM['#j']..promptEnd,
    ['d#min treble'] = promptStart..twoUp..sM['#k']..d1r1..sM['#k']..u2r1..sM['#n']..d1r1..sM['#j']..d1r1..sM['#j']..u1r1..sM['#n']..promptEnd,
    ['a#min treble'] = promptStart..twoUp..sM['#k']..d1r1..sM['#k']..u2r1..sM['#n']..d1r1..sM['#j']..d1r1..sM['#j']..u1r1..sM['#n']..d1r1..sM['#n']..promptEnd,
    ['dmin treble'] = promptStart..Up..sM['bn']..promptEnd,
    ['gmin treble'] = promptStart..Up..sM['bn']..u1r1..sM['bn']..promptEnd,
    ['cmin treble'] = promptStart..Up..sM['bn']..u1r1..sM['bn']..d1r1..sM['bj']..promptEnd,
    ['fmin treble'] = promptStart..Up..sM['bn']..u1r1..sM['bn']..d1r1..sM['bj']..u1r1..sM['bj']..promptEnd,
    ['bbmin treble'] = promptStart..Up..sM['bn']..u1r1..sM['bn']..d1r1..sM['bj']..u1r1..sM['bj']..d2r1..sM['bk']..promptEnd,
    ['ebmin treble'] = promptStart..Up..sM['bn']..u1r1..sM['bn']..d1r1..sM['bj']..u1r1..sM['bj']..d2r1..sM['bk']..u1r1..sM['bk']..promptEnd,
    ['abmin treble'] = promptStart..Up..sM['bn']..u1r1..sM['bn']..d1r1..sM['bj']..u1r1..sM['bj']..d2r1..sM['bk']..u1r1..sM['bk']..d1r1..sM['bn']..promptEnd,

    ['CMaj bass'] = promptStart..promptEnd,
    ['GMaj bass'] = promptStart..twoUp..sM['#j']..promptEnd,
    ['DMaj bass'] = promptStart..twoUp..sM['#j']..d1r1..sM['#j']..promptEnd,
    ['AMaj bass'] =  promptStart..twoUp..sM['#j']..d1r1..sM['#j']..u1r1..sM['#n']..promptEnd,
    ['EMaj bass'] =  promptStart..twoUp..sM['#j']..d1r1..sM['#j']..u1r1..sM['#n']..d1r1..sM['#n']..promptEnd,
    ['BMaj bass'] =  promptStart..twoUp..sM['#j']..d1r1..sM['#j']..u1r1..sM['#n']..d1r1..sM['#n']..d1r1..sM['#n']..promptEnd,
    ['F#Maj bass'] = promptStart..twoUp..sM['#j']..d1r1..sM['#j']..u1r1..sM['#n']..d1r1..sM['#n']..d1r1..sM['#n']..u1r1..sM['#k']..promptEnd,
    ['C#Maj bass'] = promptStart..twoUp..sM['#j']..d1r1..sM['#j']..u1r1..sM['#n']..d1r1..sM['#n']..d1r1..sM['#n']..u1r1..sM['#k']..d1r1..sM['#k']..promptEnd,
    ['FMaj bass'] = promptStart..sM['bk']..promptEnd,
    ['BbMaj bass'] = promptStart..sM['bk']..u1r1..sM['bk']..promptEnd,
    ['EbMaj bass'] = promptStart..sM['bk']..u1r1..sM['bk']..d1r1..sM['bn']..promptEnd,
    ['AbMaj bass'] = promptStart..sM['bk']..u1r1..sM['bk']..d1r1..sM['bn']..u1r1..sM['bn']..promptEnd,
    ['DbMaj bass'] = promptStart..sM['bk']..u1r1..sM['bk']..d1r1..sM['bn']..u1r1..sM['bn']..d1r1..sM['bj']..promptEnd,
    ['GbMaj bass'] = promptStart..sM['bk']..u1r1..sM['bk']..d1r1..sM['bn']..u1r1..sM['bn']..d1r1..sM['bj']..u1r1..sM['bj']..promptEnd,
    ['CbMaj bass'] = promptStart..sM['bk']..u1r1..sM['bk']..d1r1..sM['bn']..u1r1..sM['bn']..d1r1..sM['bj']..u1r1..sM['bj']..d2r1..sM['bk']..promptEnd,

    ['amin bass'] = promptStart..promptEnd,
    ['emin bass'] = promptStart..twoUp..sM['#j']..promptEnd,
    ['bmin bass'] = promptStart..twoUp..sM['#j']..d1r1..sM['#j']..promptEnd,
    ['f#min bass'] = promptStart..twoUp..sM['#j']..d1r1..sM['#j']..u1r1..sM['#n']..promptEnd,
    ['c#min bass'] = promptStart..twoUp..sM['#j']..d1r1..sM['#j']..u1r1..sM['#n']..d1r1..sM['#n']..promptEnd,
    ['g#min bass'] = promptStart..twoUp..sM['#j']..d1r1..sM['#j']..u1r1..sM['#n']..d1r1..sM['#n']..d1r1..sM['#n']..promptEnd,
    ['d#min bass'] = promptStart..twoUp..sM['#j']..d1r1..sM['#j']..u1r1..sM['#n']..d1r1..sM['#n']..d1r1..sM['#n']..u1r1..sM['#k']..promptEnd,
    ['a#min bass'] = promptStart..twoUp..sM['#j']..d1r1..sM['#j']..u1r1..sM['#n']..d1r1..sM['#n']..d1r1..sM['#n']..u1r1..sM['#k']..d1r1..sM['#k']..promptEnd,
    ['dmin bass'] = promptStart..sM['bk']..promptEnd,
    ['gmin bass'] =  promptStart..sM['bk']..u1r1..sM['bk']..promptEnd,
    ['cmin bass'] =  promptStart..sM['bk']..u1r1..sM['bk']..d1r1..sM['bn']..promptEnd,
    ['fmin bass'] =  promptStart..sM['bk']..u1r1..sM['bk']..d1r1..sM['bn']..u1r1..sM['bn']..promptEnd,
    ['bbmin bass'] = promptStart..sM['bk']..u1r1..sM['bk']..d1r1..sM['bn']..u1r1..sM['bn']..d1r1..sM['bj']..promptEnd,
    ['ebmin bass'] = promptStart..sM['bk']..u1r1..sM['bk']..d1r1..sM['bn']..u1r1..sM['bn']..d1r1..sM['bj']..u1r1..sM['bj']..promptEnd,
    ['abmin bass'] = promptStart..sM['bk']..u1r1..sM['bk']..d1r1..sM['bn']..u1r1..sM['bn']..d1r1..sM['bj']..u1r1..sM['bj']..d2r1..sM['bk']..promptEnd,
}
