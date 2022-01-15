" Telekon theme
" Author: Luke (curlpipe)
" Maintainer: Luke (curlpipe)

set background=dark

highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="telekon"

"----------------------------------------------------------------
" General settings                                              |
"----------------------------------------------------------------
"----------------------------------------------------------------
" Syntax group   | Foreground    | Background    | Style        |
"----------------------------------------------------------------

" --------------------------------
" Editor settings
" --------------------------------
hi Normal          ctermfg=195    ctermbg=none    cterm=none
hi Cursor          ctermfg=232    ctermbg=30    cterm=none
hi CursorLine      ctermfg=none   ctermbg=none    cterm=none
hi LineNr          ctermfg=239    ctermbg=none    cterm=none
hi CursorLineNR    ctermfg=235    ctermbg=none    cterm=none

" -----------------
" - Number column -
" -----------------
hi CursorColumn    ctermfg=none    ctermbg=none    cterm=none
hi FoldColumn      ctermfg=none    ctermbg=none    cterm=none
hi SignColumn      ctermfg=none    ctermbg=none    cterm=none
hi Folded          ctermfg=none    ctermbg=none    cterm=none

" -------------------------
" - Window/Tab delimiters - 
" -------------------------
hi VertSplit       ctermfg=36    ctermbg=none    cterm=none
hi ColorColumn     ctermfg=none    ctermbg=none    cterm=none
hi TabLine         ctermfg=none    ctermbg=none    cterm=none
hi TabLineFill     ctermfg=none    ctermbg=none    cterm=none
hi TabLineSel      ctermfg=none    ctermbg=none    cterm=none

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
hi Directory       ctermfg=244    ctermbg=none    cterm=none
hi Search          ctermfg=239    ctermbg=195    cterm=none
hi IncSearch       ctermfg=239    ctermbg=195    cterm=none

" -----------------
" - Prompt/Status -
" -----------------
hi WildMenu        ctermfg=none    ctermbg=none    cterm=none
hi Question        ctermfg=none    ctermbg=none    cterm=none
hi Title           ctermfg=none    ctermbg=none    cterm=none
hi ModeMsg         ctermfg=none    ctermbg=none    cterm=none
hi MoreMsg         ctermfg=none    ctermbg=none    cterm=none

" --------------
" - Visual aid -
" --------------
hi MatchParen      ctermfg=195     ctermbg=239    cterm=none
hi Visual          ctermfg=195     ctermbg=239    cterm=none
hi VisualNOS       ctermfg=none    ctermbg=none    cterm=none
hi NonText         ctermfg=none    ctermbg=none    cterm=none

hi Todo            ctermfg=none    ctermbg=none    cterm=none
hi Underlined      ctermfg=none    ctermbg=none    cterm=none
hi Error           ctermfg=none    ctermbg=none    cterm=none
hi ErrorMsg        ctermfg=none    ctermbg=none    cterm=none
hi WarningMsg      ctermfg=none    ctermbg=none    cterm=none
hi Ignore          ctermfg=none    ctermbg=none    cterm=none
hi SpecialKey      ctermfg=none    ctermbg=none    cterm=none

" --------------------------------
" Variable types
" --------------------------------
hi Constant        ctermfg=62    ctermbg=none    cterm=none
hi String          ctermfg=36    ctermbg=none    cterm=none
hi StringDelimiter ctermfg=62    ctermbg=none    cterm=none
hi Character       ctermfg=39    ctermbg=none    cterm=none
hi Number          ctermfg=69    ctermbg=none    cterm=none
hi Boolean         ctermfg=36    ctermbg=none    cterm=none
hi Float           ctermfg=69    ctermbg=none    cterm=none

hi Identifier      ctermfg=62    ctermbg=none    cterm=none
hi Function        ctermfg=32    ctermbg=none    cterm=none

" --------------------------------
" Language constructs
" --------------------------------
hi Statement       ctermfg=32    ctermbg=none    cterm=none
hi Conditional     ctermfg=32    ctermbg=none    cterm=none
hi Repeat          ctermfg=32    ctermbg=none    cterm=none
hi Label           ctermfg=32    ctermbg=none    cterm=none
hi Operator        ctermfg=30    ctermbg=none    cterm=none
hi Keyword         ctermfg=25    ctermbg=none    cterm=none
hi Exception       ctermfg=27    ctermbg=none    cterm=none
hi Comment         ctermfg=244    ctermbg=none    cterm=none

hi Special         ctermfg=36    ctermbg=none    cterm=none
hi SpecialChar     ctermfg=36    ctermbg=none    cterm=none
hi Tag             ctermfg=none    ctermbg=none    cterm=none
hi Delimiter       ctermfg=none    ctermbg=none    cterm=none
hi SpecialComment  ctermfg=78    ctermbg=none    cterm=none
hi Debug           ctermfg=none    ctermbg=none    cterm=none

" ----------
" - C like -
" ----------
hi PreProc         ctermfg=32    ctermbg=none    cterm=none
hi Include         ctermfg=32    ctermbg=none    cterm=none
hi Define          ctermfg=92    ctermbg=none    cterm=none
hi Macro           ctermfg=92    ctermbg=none    cterm=none
hi PreCondit       ctermfg=92    ctermbg=none    cterm=none

hi Type            ctermfg=63    ctermbg=none    cterm=none
hi StorageClass    ctermfg=63    ctermbg=none    cterm=none
hi Structure       ctermfg=63    ctermbg=none    cterm=none
hi Typedef         ctermfg=63    ctermbg=none    cterm=none

" --------------------------------
" Diff
" --------------------------------
"hi DiffAdd         ctermbg=30    ctermfg=236    cterm=none
hi DiffAdd         ctermbg=29    ctermfg=236    cterm=none
hi DiffChange      ctermbg=32    ctermfg=236    cterm=none
hi DiffDelete      ctermbg=red    ctermfg=236    cterm=none
hi DiffText        ctermfg=236    ctermbg=99    cterm=none

" --------------------------------
" Completion menu
" --------------------------------
hi Pmenu           ctermfg=195    ctermbg=232    cterm=none
hi PmenuSel        ctermfg=none    ctermbg=30    cterm=none
hi PmenuSbar       ctermfg=none    ctermbg=none    cterm=none
hi PmenuThumb      ctermfg=none    ctermbg=none    cterm=none

" --------------------------------
" Spelling
" --------------------------------
hi SpellBad        ctermfg=none    ctermbg=none    cterm=none
hi SpellCap        ctermfg=none    ctermbg=none    cterm=none
hi SpellLocal      ctermfg=none    ctermbg=none    cterm=none
hi SpellRare       ctermfg=none    ctermbg=none    cterm=none

"--------------------------------------------------------------------
" Specific settings                                                 |
"-------------------------------------------------------------------- 
hi TabLineFill     ctermfg=255     ctermbg=236
hi TabLine         ctermbg=236
hi TabLineSel      ctermbg=29      ctermfg=236
hi FileType        ctermbg=241     ctermfg=236
