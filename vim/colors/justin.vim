" VIM COLOR FILE ==============================================================
" Author: Justin Garcia

" Preamble --------------------------------------------------------------------
let g:colors_name="justin"
hi clear
set background=dark

" 256-color Terminal ----------------------------------------------------------
if &t_Co > 255

" Color Definitions -----------------------------------------------------------
let s:black  = [ '#121212', 233 ]
let s:grey4  = [ '#1c1c1c', 234 ]
let s:grey3  = [ '#262626', 235 ]
let s:grey2  = [ '#767676', 243 ]
let s:grey1  = [ '#a8a8a8', 248 ]
let s:white  = [ '#ffffd7', 230 ]
let s:red    = [ '#d7005f', 161 ]
let s:orange = [ '#ffaf5f', 215 ]
let s:yellow = [ '#afaf87', 144 ]
let s:green  = [ '#afd787', 150 ]
let s:cyan   = [ '#87ffd7', 122 ]
let s:blue   = [ '#00afff', 39  ]
let s:purple = [ '#af5fff', 135 ]

let s:pureRed   = [ '#ff0000', 196 ]
let s:pureGreen = [ '#00ff00', 46  ]
let s:pureBlue  = [ '#0000ff', 21  ]

" Normal Group ----------------------------------------------------------------
exe 'hi Normal          ctermfg=' .s:white[1]    .' ctermbg=' .s:black[1]
"exe Noise

" Comment Group ---------------------------------------------------------------
exe 'hi Comment         ctermfg=' .s:grey2[1]
exe 'hi Todo            ctermfg=' .s:pureRed[1]  .' ctermbg=' .s:black[1] .' cterm=bold'

" Statement Group -------------------------------------------------------------
exe 'hi Statement       ctermfg=' .s:blue[1]     .' cterm=bold'
exe 'hi Function        ctermfg=' .s:cyan[1]
exe 'hi Operator        ctermfg=' .s:cyan[1]
"hi Conditional
"hi Repeat

" Constant Group --------------------------------------------------------------
exe 'hi Constant        ctermfg=' .s:orange[1]
exe 'hi String          ctermfg=' .s:green[1]
exe 'hi Number          ctermfg=' .s:purple[1]
exe 'hi Boolean         ctermfg=' .s:purple[1]
exe 'hi Character       ctermfg=' .s:purple[1]
exe 'hi Float           ctermfg=' .s:purple[1]

" Type Group ------------------------------------------------------------------
exe 'hi Type            ctermfg=' .s:red[1]     .' cterm=bold'
"hi StorageClass
"hi Structure
"hi Typedef

" Identifier Group ------------------------------------------------------------
exe 'hi Identifier      ctermfg=' .s:white[1]   .' cterm=bold'

" PreProc Group ---------------------------------------------------------------
exe 'hi PreProc         ctermfg=' .s:orange[1]  .' cterm=bold'
"hi Include
"hi Macro
"hi PreCondit

" Special Group ---------------------------------------------------------------
exe 'hi Special         ctermfg=' .s:orange[1]
exe 'hi Delimiter       ctermfg=' .s:white[1]
"hi SpecialChar

" Non Text Areas --------------------------------------------------------------
hi ColorColumn                          ctermbg=234
hi NonText              ctermfg=248     ctermbg=234
hi LineNr               ctermfg=248     ctermbg=233
hi VertSplit            ctermfg=0       ctermbg=232
hi StatusLine           ctermfg=0       ctermbg=67      cterm=none
hi StatusLineNC         ctermfg=0       ctermbg=67      cterm=bold

" Cursor Highlighting ---------------------------------------------------------
hi CursorLine                           ctermbg=235     cterm=none
hi CursorLineNr         ctermfg=215     ctermbg=235
hi MatchParen           ctermfg=233     ctermbg=215     cterm=bold

" Visual Mode -----------------------------------------------------------------
hi Visual               ctermfg=233     ctermbg=215

" File Highlighting -----------------------------------------------------------
hi Directory            ctermfg=215

" Popup Menu Group ------------------------------------------------------------
hi Pmenu                ctermfg=39      ctermbg=235
hi PmenuSel             ctermfg=39      ctermbg=236

end

"   hi Cursor          ctermfg=16  ctermbg=253
"   hi Debug           ctermfg=225               cterm=bold
"   hi Builtin         ctermfg=135               cterm=bold
"
"   hi EasyMotionTarget ctermfg=11
"   hi EasyMotionShade  ctermfg=8
"
"   hi DiffAdd                     ctermbg=24
"   hi DiffChange      ctermfg=181 ctermbg=239
"   hi DiffDelete      ctermfg=162 ctermbg=53
"   hi DiffText                    ctermbg=102 cterm=bold
"
"   hi Error           ctermfg=219 ctermbg=89
"   hi ErrorMsg        ctermfg=199 ctermbg=16    cterm=bold
"   hi Exception       ctermfg=118               cterm=bold
"   hi FoldColumn      ctermfg=67  ctermbg=233
"   hi Folded          ctermfg=67  ctermbg=233
"   hi Ignore          ctermfg=244 ctermbg=232
"   hi IncSearch       ctermfg=193 ctermbg=16
"
"   hi Keyword         ctermfg=33               cterm=bold
"   hi Label           ctermfg=229               cterm=none
"   hi SpecialKey      ctermfg=81
"   hi MailHeaderEmail ctermfg=3  ctermbg=233
"   hi MailEmail       ctermfg=3  ctermbg=233
"
"   hi ModeMsg         ctermfg=229
"   hi MoreMsg         ctermfg=229
"
"   " complete menu
"   hi Pmenu           ctermfg=81  ctermbg=16
"   hi PmenuSel                    ctermbg=244
"   hi PmenuSbar                   ctermbg=232
"   hi PmenuThumb      ctermfg=81
"
"   hi Question        ctermfg=81
"   hi Search          ctermfg=253 ctermbg=66
"
"   " marks column
"   hi SignColumn      ctermfg=118 ctermbg=235
"   hi SpecialComment  ctermfg=245               cterm=bold
"   hi Special         ctermfg=81  ctermbg=232
"   hi SpecialKey      ctermfg=245
"
"   hi Tag             ctermfg=161
"   hi Title           ctermfg=166
"
"   hi Underlined      ctermfg=244               cterm=underline
"   hi InheritUnderlined      ctermfg=118               cterm=underline
"
"   hi VisualNOS                   ctermbg=238
"   hi Visual                      ctermbg=235
"   hi WildMenu        ctermfg=81  ctermbg=16
"   hi WarningMsg      ctermfg=231 ctermbg=0   cterm=bold
