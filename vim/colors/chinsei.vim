" Preamble ====================================================================
hi clear

if exists("syntax_on")
	syntax reset
endif

let colors_name = "chinsei"

" Color Definitions -----------------------------------------------------------
" xterm=196 -> red
" xterm=46	-> green
" xterm=21	-> blue

" Normal Group ----------------------------------------------------------------
hi Normal					ctermfg=15
"hi ShowMatches		ctermfg=15
"hi Noise

" Comment Group ---------------------------------------------------------------
hi Comment				ctermfg=7
hi Todo						ctermfg=196		ctermbg=NONE		cterm=underline

" Statement Group -------------------------------------------------------------
hi Statement			ctermfg=12
hi Operator				ctermfg=15
"hi Conditional		ctermfg=6
"hi Repeat					ctermfg=6
"hi Function				ctermfg=14

" Constant Group --------------------------------------------------------------
hi Constant				ctermfg=14
"hi String				ctermfg=2
"hi Number				ctermfg=13
"hi Boolean				ctermfg=13
"hi Character			ctermfg=13
"hi Float					ctermfg=13

" Type Group ------------------------------------------------------------------
hi Type						ctermfg=9
"hi StorageClass
"hi Structure
"hi Typedef

" Identifier Group ------------------------------------------------------------
hi Identifier			ctermfg=15

" PreProc Group ---------------------------------------------------------------
hi PreProc				ctermfg=3
"hi Include
"hi Macro
"hi PreCondit

" Special Group ---------------------------------------------------------------
hi Special				ctermfg=14
"hi SpecialChar		ctermfg=6
"hi Delimeter			ctermfg=15

" Error Group -----------------------------------------------------------------
hi Error					ctermfg=196		ctermbg=NONE
hi ErrorMsg				ctermfg=196		ctermbg=NONE
"hi ALEErrorSign		ctermfg=15		ctermbg=196

" Non Text Areas --------------------------------------------------------------
hi NonText				ctermfg=7
hi LineNr					ctermfg=7
hi ColorColumn									ctermbg=8
hi VertSplit			ctermfg=8
hi EndOfBuffer		ctermfg=7
hi Folded					ctermfg=3			ctermbg=NONE
hi SignColumn										ctermbg=NONE
hi SpecialKey			ctermfg=8

" Cursor Highlighting ---------------------------------------------------------
hi CursorLine										ctermbg=8
hi CursorLineNr		ctermfg=3
hi MatchParen			ctermfg=0			ctermbg=3

" Search Highlighting ---------------------------------------------------------
hi Search         ctermfg=0			ctermbg=3
"hi QuickFixLine
"hi Substitute

" Visual Mode -----------------------------------------------------------------
hi Visual         ctermfg=0			ctermbg=3

" Misc Highlighting -----------------------------------------------------------
hi Directory      ctermfg=3
hi WildMenu       ctermfg=0			ctermbg=3

" Popup Menu Group ------------------------------------------------------------
hi Pmenu          ctermfg=12    ctermbg=8
hi PmenuSel       ctermfg=12    ctermbg=7
"hi PmenuSbar
"hi PmenuThumb

" StatusLine ------------------------------------------------------------------
hi StatusLine			ctermfg=8			ctermbg=15
hi StatusLineNC		ctermfg=8			ctermbg=15
hi MoreMsg        ctermfg=10
hi Question				ctermfg=10

" TabLine ---------------------------------------------------------------------
hi TabLine ctermfg=7 ctermbg=8 cterm=none
hi TabLineSel ctermfg=15 ctermbg=0
hi TabLineFill ctermfg=8 ctermbg=15

" TabLine

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
"   hi Exception       ctermfg=118               cterm=bold
"   hi FoldColumn      ctermfg=67  ctermbg=233
"   hi Folded          ctermfg=67  ctermbg=233
"   hi Ignore          ctermfg=244 ctermbg=232
"   hi IncSearch       ctermfg=193 ctermbg=16
"
"   hi Keyword         ctermfg=33               cterm=bold
"   hi Label           ctermfg=229               cterm=none
"   hi MailHeaderEmail ctermfg=3  ctermbg=233
"   hi MailEmail       ctermfg=3  ctermbg=233
"
"   hi ModeMsg         ctermfg=229
"
"   " marks column
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
"   hi WarningMsg      ctermfg=231 ctermbg=0   cterm=bold
