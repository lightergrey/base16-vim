" vi:syntax=vim

" base16-vim (https://github.com/chriskempson/base16-vim)
" by Chris Kempson (http://chriskempson.com)
" OceanicNext scheme by https://github.com/voronianski/oceanic-next-color-scheme

" GUI color definitions
let s:gui_black   = "#1B2B34"
let s:gui_dark_3  = "#343D46"
let s:gui_dark_2  = "#4F5B66"
let s:gui_dark_3  = "#65737E"
let s:gui_light_1 = "#A7ADBA"
let s:gui_light_2 = "#C0C5CE"
let s:gui_light_3 = "#CDD3DE"
let s:gui_white   = "#D8DEE9"
let s:gui_red     = "#EC5f67"
let s:gui_orange  = "#F99157"
let s:gui_yellow  = "#FAC863"
let s:gui_green   = "#99C794"
let s:gui_aqua    = "#5FB3B3"
let s:gui_blue    = "#6699CC"
let s:gui_purple  = "#C594C5"
let s:gui_brown   = "#AB7967"

" Neovim terminal colours
if has("nvim")
  let g:terminal_color_0 =  s:gui_black
  let g:terminal_color_1 =  s:gui_red
  let g:terminal_color_2 =  s:gui_green
  let g:terminal_color_3 =  s:gui_yellow
  let g:terminal_color_4 =  s:gui_blue
  let g:terminal_color_5 =  s:gui_purple
  let g:terminal_color_6 =  s:gui_aqua
  let g:terminal_color_7 =  s:gui_light_2
  let g:terminal_color_8 =  s:gui_dark_3
  let g:terminal_color_9 =  s:gui_orange
  let g:terminal_color_10 = s:gui_dark_3
  let g:terminal_color_11 = s:gui_dark_2
  let g:terminal_color_12 = s:gui_light_1
  let g:terminal_color_13 = s:gui_light_3
  let g:terminal_color_14 = s:gui_brown
  let g:terminal_color_15 = s:gui_white
  let g:terminal_color_background = g:terminal_color_0
  let g:terminal_color_foreground = g:terminal_color_7
endif

" Theme setup
hi clear
syntax reset
let g:colors_name = "base16-oceanicnext"

" Highlighting function
fun <sid>hi(group, guifg, guibg, attr, guisp)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=" . a:guibg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
  if a:guisp != ""
    exec "hi " . a:group . " guisp=#" . a:guisp
  endif
endfun

" Vim editor colors
call <sid>hi("Normal",                     s:gui_light_2, s:gui_black,   "",          "")
call <sid>hi("Bold",                       "",            "",            "bold",      "")
call <sid>hi("Debug",                      s:gui_red,     "",            "",          "")
call <sid>hi("Directory",                  s:gui_blue,    "",            "",          "")
call <sid>hi("Error",                      s:gui_black,   s:gui_red,     "",          "")
call <sid>hi("ErrorMsg",                   s:gui_red,     s:gui_black,   "",          "")
call <sid>hi("Exception",                  s:gui_red,     "",            "",          "")
call <sid>hi("FoldColumn",                 s:gui_aqua,    s:gui_dark_3,  "",          "")
call <sid>hi("Folded",                     s:gui_dark_3,  s:gui_dark_3,  "",          "")
call <sid>hi("IncSearch",                  s:gui_dark_3,  s:gui_orange,  "none",      "")
call <sid>hi("Italic",                     "",            "",            "none",      "")
call <sid>hi("Macro",                      s:gui_red,     "",            "",          "")
call <sid>hi("MatchParen",                 "",            s:gui_dark_3,  "",          "")
call <sid>hi("ModeMsg",                    s:gui_green,   "",            "",          "")
call <sid>hi("MoreMsg",                    s:gui_green,   "",            "",          "")
call <sid>hi("Question",                   s:gui_blue,    "",            "",          "")
call <sid>hi("Search",                     s:gui_dark_3,  s:gui_yellow,  "",          "")
call <sid>hi("SpecialKey",                 s:gui_dark_3,  "",            "",          "")
call <sid>hi("TooLong",                    s:gui_red,     "",            "",          "")
call <sid>hi("Underlined",                 s:gui_red,     "",            "",          "")
call <sid>hi("Visual",                     "",            s:gui_dark_2,  "",          "")
call <sid>hi("VisualNOS",                  s:gui_red,     "",            "",          "")
call <sid>hi("WarningMsg",                 s:gui_red,     "",            "",          "")
call <sid>hi("WildMenu",                   s:gui_red,     s:gui_yellow,  "",          "")
call <sid>hi("Title",                      s:gui_blue,    "",            "none",      "")
call <sid>hi("Conceal",                    s:gui_dark_3,  s:gui_black,   "",          "")
call <sid>hi("Cursor",                     s:gui_black,   s:gui_light_2, "",          "")
call <sid>hi("NonText",                    s:gui_dark_3,  "",            "",          "")
call <sid>hi("LineNr",                     s:gui_dark_3,  s:gui_black,   "",          "")
call <sid>hi("SignColumn",                 s:gui_dark_3,  s:gui_dark_3,  "",          "")
call <sid>hi("StatusLine",                 s:gui_white,   s:gui_black,   "bold",      "")
call <sid>hi("StatusLineNC",               s:gui_black,   s:gui_dark_3,  "none",      "")
call <sid>hi("VertSplit",                  s:gui_dark_3,  s:gui_dark_3,  "none",      "")
call <sid>hi("ColorColumn",                "",            s:gui_dark_3,  "none",      "")
call <sid>hi("CursorColumn",               "",            s:gui_dark_3,  "none",      "")
call <sid>hi("CursorLine",                 "",            s:gui_black,   "bold",      "")
call <sid>hi("CursorLineNr",               s:gui_light_1, s:gui_black,   "",          "")
call <sid>hi("QuickFixLine",               "",            s:gui_dark_3,  "none",      "")
call <sid>hi("PMenu",                      s:gui_white,   s:gui_dark_3,  "none",      "")
call <sid>hi("PMenuSel",                   s:gui_black,   s:gui_light_3, "",          "")
call <sid>hi("TabLine",                    s:gui_black,   s:gui_dark_3,  "none",      "")
call <sid>hi("TabLineFill",                s:gui_dark_3,  s:gui_dark_3,  "none",      "")
call <sid>hi("TabLineSel",                 s:gui_white,   s:gui_black,   "bold",      "")

" Standard syntax highlighting
call <sid>hi("Boolean",                    s:gui_orange,  "",            "",          "")
call <sid>hi("Character",                  s:gui_red,     "",            "",          "")
call <sid>hi("Comment",                    s:gui_dark_3,  "",            "",          "")
call <sid>hi("Conditional",                s:gui_purple,  "",            "",          "")
call <sid>hi("Constant",                   s:gui_orange,  "",            "",          "")
call <sid>hi("Define",                     s:gui_purple,  "",            "none",      "")
call <sid>hi("Delimiter",                  s:gui_brown,   "",            "",          "")
call <sid>hi("Float",                      s:gui_orange,  "",            "",          "")
call <sid>hi("Function",                   s:gui_blue,    "",            "",          "")
call <sid>hi("Identifier",                 s:gui_red,     "",            "none",      "")
call <sid>hi("Include",                    s:gui_blue,    "",            "",          "")
call <sid>hi("Keyword",                    s:gui_purple,  "",            "",          "")
call <sid>hi("Label",                      s:gui_yellow,  "",            "",          "")
call <sid>hi("Number",                     s:gui_orange,  "",            "",          "")
call <sid>hi("Operator",                   s:gui_light_2, "",            "none",      "")
call <sid>hi("PreProc",                    s:gui_yellow,  "",            "",          "")
call <sid>hi("Repeat",                     s:gui_yellow,  "",            "",          "")
call <sid>hi("Special",                    s:gui_aqua,    "",            "",          "")
call <sid>hi("SpecialChar",                s:gui_brown,   "",            "",          "")
call <sid>hi("Statement",                  s:gui_red,     "",            "",          "")
call <sid>hi("StorageClass",               s:gui_yellow,  "",            "",          "")
call <sid>hi("String",                     s:gui_green,   "",            "",          "")
call <sid>hi("Structure",                  s:gui_purple,  "",            "",          "")
call <sid>hi("Tag",                        s:gui_yellow,  "",            "",          "")
call <sid>hi("Todo",                       s:gui_yellow,  s:gui_dark_3,  "",          "")
call <sid>hi("Type",                       s:gui_yellow,  "",            "none",      "")
call <sid>hi("Typedef",                    s:gui_yellow,  "",            "",          "")

" C highlighting
call <sid>hi("cOperator",                  s:gui_aqua,    "",            "",          "")
call <sid>hi("cPreCondit",                 s:gui_purple,  "",            "",          "")

" C# highlighting
call <sid>hi("csClass",                    s:gui_yellow,  "",            "",          "")
call <sid>hi("csAttribute",                s:gui_yellow,  "",            "",          "")
call <sid>hi("csModifier",                 s:gui_purple,  "",            "",          "")
call <sid>hi("csType",                     s:gui_red,     "",            "",          "")
call <sid>hi("csUnspecifiedStatement",     s:gui_blue,    "",            "",          "")
call <sid>hi("csContextualStatement",      s:gui_purple,  "",            "",          "")
call <sid>hi("csNewDecleration",           s:gui_red,     "",            "",          "")

" CSS highlighting
call <sid>hi("cssBraces",                  s:gui_light_2, "",            "",          "")
call <sid>hi("cssClassName",               s:gui_purple,  "",            "",          "")
call <sid>hi("cssColor",                   s:gui_aqua,    "",            "",          "")

" Diff highlighting
call <sid>hi("DiffAdd",                    s:gui_black,   s:gui_green,   "",          "")
call <sid>hi("DiffChange",                 "",            s:gui_dark_3,  "",          "")
call <sid>hi("DiffDelete",                 s:gui_red,     s:gui_red,     "",          "")
call <sid>hi("DiffText",                   s:gui_black,   s:gui_green,   "none",      "")
call <sid>hi("DiffAdded",                  s:gui_green,   s:gui_black,   "",          "")
call <sid>hi("DiffFile",                   s:gui_red,     s:gui_black,   "",          "")
call <sid>hi("DiffNewFile",                s:gui_green,   s:gui_black,   "",          "")
call <sid>hi("DiffLine",                   s:gui_blue,    s:gui_black,   "",          "")
call <sid>hi("DiffRemoved",                s:gui_red,     s:gui_black,   "",          "")

" Git highlighting
call <sid>hi("gitcommitOverflow",          s:gui_red,     "",            "",          "")
call <sid>hi("gitcommitSummary",           s:gui_green,   "",            "",          "")
call <sid>hi("gitcommitComment",           s:gui_dark_3,  "",            "",          "")
call <sid>hi("gitcommitUntracked",         s:gui_dark_3,  "",            "",          "")
call <sid>hi("gitcommitDiscarded",         s:gui_dark_3,  "",            "",          "")
call <sid>hi("gitcommitSelected",          s:gui_dark_3,  "",            "",          "")
call <sid>hi("gitcommitHeader",            s:gui_purple,  "",            "",          "")
call <sid>hi("gitcommitSelectedType",      s:gui_blue,    "",            "",          "")
call <sid>hi("gitcommitUnmergedType",      s:gui_blue,    "",            "",          "")
call <sid>hi("gitcommitDiscardedType",     s:gui_blue,    "",            "",          "")
call <sid>hi("gitcommitBranch",            s:gui_orange,  "",            "",          "")
call <sid>hi("gitcommitUntrackedFile",     s:gui_yellow,  "",            "",          "")
call <sid>hi("gitcommitUnmergedFile",      s:gui_red,     "",            "",          "")
call <sid>hi("gitcommitDiscardedFile",     s:gui_red,     "",            "",          "")
call <sid>hi("gitcommitSelectedFile",      s:gui_green,   "",            "",          "")

" GitGutter highlighting
call <sid>hi("GitGutterAdd",               s:gui_green,   s:gui_black,   "",          "")
call <sid>hi("GitGutterChange",            s:gui_yellow,  s:gui_black,   "",          "")
call <sid>hi("GitGutterDelete",            s:gui_red,     s:gui_black,   "",          "")
call <sid>hi("GitGutterChangeDelete",      s:gui_red,     s:gui_black,   "",          "")

" HTML highlighting
call <sid>hi("htmlBold",                   s:gui_yellow,  "",            "",          "")
call <sid>hi("htmlItalic",                 s:gui_purple,  "",            "",          "")
call <sid>hi("htmlEndTag",                 s:gui_light_2, "",            "",          "")
call <sid>hi("htmlTag",                    s:gui_light_2, "",            "",          "")

" JavaScript highlighting
call <sid>hi("javaScript",                 s:gui_light_2, "",            "",          "")
call <sid>hi("javaScriptBraces",           s:gui_light_2, "",            "",          "")
call <sid>hi("javaScriptNumber",           s:gui_orange,  "",            "",          "")
" pangloss/vim-javascript highlighting
call <sid>hi("jsOperator",                 s:gui_blue,    "",            "",          "")
call <sid>hi("jsStatement",                s:gui_purple,  "",            "",          "")
call <sid>hi("jsReturn",                   s:gui_purple,  "",            "",          "")
call <sid>hi("jsThis",                     s:gui_red,     "",            "",          "")
call <sid>hi("jsClassDefinition",          s:gui_yellow,  "",            "",          "")
call <sid>hi("jsFunction",                 s:gui_purple,  "",            "",          "")
call <sid>hi("jsFuncName",                 s:gui_blue,    "",            "",          "")
call <sid>hi("jsFuncCall",                 s:gui_blue,    "",            "",          "")
call <sid>hi("jsClassFuncName",            s:gui_blue,    "",            "",          "")
call <sid>hi("jsClassMethodType",          s:gui_purple,  "",            "",          "")
call <sid>hi("jsRegexpString",             s:gui_aqua,    "",            "",          "")
call <sid>hi("jsGlobalObjects",            s:gui_yellow,  "",            "",          "")
call <sid>hi("jsGlobalNodeObjects",        s:gui_yellow,  "",            "",          "")
call <sid>hi("jsExceptions",               s:gui_yellow,  "",            "",          "")
call <sid>hi("jsBuiltins",                 s:gui_yellow,  "",            "",          "")

" Mail highlighting
call <sid>hi("mailQuoted1",                s:gui_yellow,  "",            "",          "")
call <sid>hi("mailQuoted2",                s:gui_green,   "",            "",          "")
call <sid>hi("mailQuoted3",                s:gui_purple,  "",            "",          "")
call <sid>hi("mailQuoted4",                s:gui_aqua,    "",            "",          "")
call <sid>hi("mailQuoted5",                s:gui_blue,    "",            "",          "")
call <sid>hi("mailQuoted6",                s:gui_yellow,  "",            "",          "")
call <sid>hi("mailURL",                    s:gui_blue,    "",            "",          "")
call <sid>hi("mailEmail",                  s:gui_blue,    "",            "",          "")

" Markdown highlighting
call <sid>hi("markdownCode",               s:gui_green,   "",            "",          "")
call <sid>hi("markdownError",              s:gui_light_2, s:gui_black,   "",          "")
call <sid>hi("markdownCodeBlock",          s:gui_green,   "",            "",          "")
call <sid>hi("markdownHeadingDelimiter",   s:gui_blue,    "",            "",          "")

" NERDTree highlighting
call <sid>hi("NERDTreeDirSlash",           s:gui_blue,    "",            "",          "")
call <sid>hi("NERDTreeExecFile",           s:gui_light_2, "",            "",          "")

" PHP highlighting
call <sid>hi("phpMemberSelector",          s:gui_light_2, "",            "",          "")
call <sid>hi("phpComparison",              s:gui_light_2, "",            "",          "")
call <sid>hi("phpParent",                  s:gui_light_2, "",            "",          "")

" Python highlighting
call <sid>hi("pythonOperator",             s:gui_purple,  "",            "",          "")
call <sid>hi("pythonRepeat",               s:gui_purple,  "",            "",          "")
call <sid>hi("pythonInclude",              s:gui_purple,  "",            "",          "")
call <sid>hi("pythonStatement",            s:gui_purple,  "",            "",          "")

" Ruby highlighting
call <sid>hi("rubyAttribute",              s:gui_blue,    "",            "",          "")
call <sid>hi("rubyConstant",               s:gui_yellow,  "",            "",          "")
call <sid>hi("rubyInterpolationDelimiter", s:gui_brown,   "",            "",          "")
call <sid>hi("rubyRegexp",                 s:gui_aqua,    "",            "",          "")
call <sid>hi("rubySymbol",                 s:gui_green,   "",            "",          "")
call <sid>hi("rubyStringDelimiter",        s:gui_green,   "",            "",          "")

" SASS highlighting
call <sid>hi("sassidChar",                 s:gui_red,     "",            "",          "")
call <sid>hi("sassClassChar",              s:gui_orange,  "",            "",          "")
call <sid>hi("sassInclude",                s:gui_purple,  "",            "",          "")
call <sid>hi("sassMixing",                 s:gui_purple,  "",            "",          "")
call <sid>hi("sassMixinName",              s:gui_blue,    "",            "",          "")

" Signify highlighting
call <sid>hi("SignifySignAdd",             s:gui_green,   s:gui_dark_3,  "",          "")
call <sid>hi("SignifySignChange",          s:gui_blue,    s:gui_dark_3,  "",          "")
call <sid>hi("SignifySignDelete",          s:gui_red,     s:gui_dark_3,  "",          "")

" Spelling highlighting
call <sid>hi("SpellBad",                   "",            s:gui_black,   "undercurl", s:gui_red)
call <sid>hi("SpellLocal",                 "",            s:gui_black,   "undercurl", s:gui_aqua)
call <sid>hi("SpellCap",                   "",            s:gui_black,   "undercurl", s:gui_blue)
call <sid>hi("SpellRare",                  "",            s:gui_black,   "undercurl", s:gui_purple)

" Ale highlighting
call <sid>hi("ALEErrorSign",               s:gui_red,     s:gui_black,   "",          "")
call <sid>hi("ALEWarningSign",             s:gui_yellow,  s:gui_black,   "",          "")
call <sid>hi("ALEWarning",                 s:gui_yellow,  "",            "undercurl", "")
call <sid>hi("ALEError",                   s:gui_red,     "",            "undercurl", "")

" UI stuff
call <sid>hi("EndOfBuffer",                s:gui_black,   s:gui_black,   "",          "")

" Remove functions
delf <sid>hi
