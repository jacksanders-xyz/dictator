-- local promptStart =  "exec 'norm!' ':lua vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(\"ihello<CR>\",true,false,true),\"m\",true)\r'"
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
    ['emin treble'] = promptStart..promptEnd,
    ['bmin treble'] = promptStart..promptEnd,
    ['f#min treble'] = promptStart..promptEnd,
    ['c#min treble'] = promptStart..promptEnd,
    ['g#min treble'] = promptStart..promptEnd,
    ['d#min treble'] = promptStart..promptEnd,
    ['a#min treble'] = promptStart..promptEnd,
    ['dmin treble'] = promptStart..promptEnd,
    ['gmin treble'] = promptStart..promptEnd,
    ['cmin treble'] = promptStart..promptEnd,
    ['fmin treble'] = promptStart..promptEnd,
    ['bbmin treble'] = promptStart..promptEnd,
    ['ebmin treble'] = promptStart..promptEnd,
    ['abmin treble'] = promptStart..promptEnd,

    ['CMaj bass'] = promptStart..promptEnd,
    ['GMaj bass'] = promptStart..promptEnd,
    ['DMaj bass'] = promptStart..promptEnd,
    ['AMaj bass'] = promptStart..promptEnd,
    ['EMaj bass'] = promptStart..promptEnd,
    ['BMaj bass'] = promptStart..promptEnd,
    ['F#Maj bass'] = promptStart..promptEnd,
    ['C#Maj bass'] = promptStart..promptEnd,
    ['FMaj bass'] = promptStart..promptEnd,
    ['BbMaj bass'] = promptStart..promptEnd,
    ['EbMaj bass'] = promptStart..promptEnd,
    ['AbMaj bass'] = promptStart..promptEnd,
    ['DbMaj bass'] = promptStart..promptEnd,
    ['GbMaj bass'] = promptStart..promptEnd,
    ['CbMaj bass'] = promptStart..promptEnd,

    ['amin bass'] = promptStart..promptEnd,
    ['emin bass'] = promptStart..promptEnd,
    ['bmin bass'] = promptStart..promptEnd,
    ['f#min bass'] = promptStart..promptEnd,
    ['c#min bass'] = promptStart..promptEnd,
    ['g#min bass'] = promptStart..promptEnd,
    ['d#min bass'] = promptStart..promptEnd,
    ['a#min bass'] = promptStart..promptEnd,
    ['dmin bass'] = promptStart..promptEnd,
    ['gmin bass'] = promptStart..promptEnd,
    ['cmin bass'] = promptStart..promptEnd,
    ['fmin bass'] = promptStart..promptEnd,
    ['bbmin bass'] = promptStart..promptEnd,
    ['ebmin bass'] = promptStart..promptEnd,
    ['abmin bass'] = promptStart..promptEnd,
}
