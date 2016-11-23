" VIM COLOR FILE ==============================================================
" Author: Justin Garcia

" Preamble --------------------------------------------------------------------
hi clear
set background=dark

" Airline Color Settings ------------------------------------------------------
let g:colors_name="justin"

" 256-color Terminal ----------------------------------------------------------
if &t_Co > 255

" Normal Group ----------------------------------------------------------------
hi Normal               ctermfg=230     ctermbg=233

" Comment Group ---------------------------------------------------------------
hi Comment              ctermfg=243

" Statement Group -------------------------------------------------------------
hi Statement            ctermfg=39                      cterm=bold
hi Function             ctermfg=122
hi Operator             ctermfg=230
"hi Conditional
"hi Repeat

" Constant Group --------------------------------------------------------------
hi Constant             ctermfg=135
hi String               ctermfg=150
"hi Boolean
"hi Character
"hi Float
"hi Number

" Type Group ------------------------------------------------------------------
hi Type                 ctermfg=161                     cterm=bold
"hi StorageClass
"hi Structure
"hi Typedef

" Identifier Group ------------------------------------------------------------
hi Identifier           ctermfg=230                     cterm=bold

" PreProc Group ---------------------------------------------------------------
hi PreProc              ctermfg=215                     cterm=bold
"hi Include
"hi Macro
"hi PreCondit

" Special Group ---------------------------------------------------------------
hi Special              ctermfg=150
hi Delimiter            ctermfg=230
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
"   hi Todo            ctermfg=231 ctermbg=232   cterm=bold
"
"   hi Underlined      ctermfg=244               cterm=underline
"   hi InheritUnderlined      ctermfg=118               cterm=underline
"
"   hi VisualNOS                   ctermbg=238
"   hi Visual                      ctermbg=235
"   hi WildMenu        ctermfg=81  ctermbg=16
"   hi WarningMsg      ctermfg=231 ctermbg=0   cterm=bold