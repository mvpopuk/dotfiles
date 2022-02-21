highlight clear

function s:highlight(group, bg, fg, style)
  let gui = a:style == '' ? '' : 'gui=' . a:style
  let fg = a:fg == '' ? '' : 'guifg=' . a:fg
  let bg = a:bg == '' ? '' : 'guibg=' . a:bg
  exec 'hi ' . a:group . ' ' . bg . ' ' . fg  . ' ' . gui
endfunction

let s:carbon_Color0 = '#DB6E89' " keyword, operation
let s:carbon_Color1 = '#9876AA' " variable, constant identifier, doc comment param
let s:carbon_Color2 = '#B87EA2' " identifier
let s:carbon_Color3 = '#73A7A7' " string
let s:carbon_Color4 = '#F9B5AC' " function call, instance method
let s:carbon_Color5 = '#F2C4B3' " number
let s:carbon_Color6 = '#C9CCCD' " class name, static field, doc comment type
let s:carbon_Color7 = '#5D6976' " comment, doc comment tag (bold), doc comment text
let s:carbon_Color8 = '#A5C25C' " string literal foreground (backticks)
let s:carbon_Color9 = '#5E6465' " string literal background
let s:carbon_Color10 = '#172030' " gutter, sign background
let s:carbon_Color11 = '#465063' " line number
let s:carbon_Color12 = '#082F3B' " diff add background
let s:carbon_Color13 = '#4B2234' " diff remove background
let s:carbon_Color14 = '#45302B' " diff change backgound
let s:carbon_Color15 = '#A4A3A3' " caret line
let s:carbon_Color16 = '#1E2A3E' " caret line background
let s:carbon_Color17 = '#FFAE8F' " html tags
let s:carbon_Color18 = '#D0D6B5' " html tag attributes
let s:carbon_Color19 = '#CDD3D3' " html tag attributes
let s:carbon_Color20 = '#FF4262' " error text
let s:carbon_Color21 = '#02858E' " links
let s:carbon_Color22 = '#57A464' " diff add
let s:carbon_Color23 = '#43698D' " diff change
let s:carbon_Color24 = '#DB7090' " diff delete

call s:highlight('Normal', s:carbon_Color10, '', '')
call s:highlight('Directory', '', s:carbon_Color21, '')
call s:highlight('Search', s:carbon_Color5, '', '')
call s:highlight('Ignore', s:carbon_Color10, s:carbon_Color19, 'bold')
call s:highlight('Todo', s:carbon_Color10, s:carbon_Color19, 'bold')
call s:highlight('PreProc', '', s:carbon_Color0, '')
call s:highlight('Visual', s:carbon_Color16, '', '')
call s:highlight('Special', '', s:carbon_Color2, '')
call s:highlight('Statement', '', s:carbon_Color17, '')
call s:highlight('Keyword', '', s:carbon_Color2, '')
call s:highlight('Operator', '', s:carbon_Color14, '')
call s:highlight('Type', '', s:carbon_Color3, '')
call s:highlight('String', '', s:carbon_Color3, '')
call s:highlight('Function', '', s:carbon_Color0, '')
call s:highlight('Error', '', s:carbon_Color20, '')
call s:highlight('Identifier', '', s:carbon_Color2, '')
call s:highlight('Number', '', s:carbon_Color5, '')
call s:highlight('Comment', '', s:carbon_Color7, '')
call s:highlight('StatusLine', s:carbon_Color6, s:carbon_Color10, '')
call s:highlight('WildMenu', s:carbon_Color16, s:carbon_Color7, '')
call s:highlight('PMenu', s:carbon_Color16, s:carbon_Color6, '')
call s:highlight('PMenuSel', s:carbon_Color10, s:carbon_Color1, '')
call s:highlight('LineNr', s:carbon_Color10, s:carbon_Color11, '')
call s:highlight('CursorLine', s:carbon_Color16, '', '')
call s:highlight('CursorLineNr', '', s:carbon_Color15, '')
call s:highlight('ColorColumn', s:carbon_Color16, '', '')
call s:highlight('SignColumn', s:carbon_Color10, s:carbon_Color21, '')
call s:highlight('ErrorMsg', s:carbon_Color10, s:carbon_Color20, '')
call s:highlight('DiagnosticError', '', s:carbon_Color0, '')
call s:highlight('DiagnosticWarn', '', s:carbon_Color17, '')
call s:highlight('WarningMsg', '', s:carbon_Color17, '')
call s:highlight('Title', '', s:carbon_Color2 , '')
call s:highlight('MoreMsg', '', s:carbon_Color15, '')
call s:highlight('Question', '', s:carbon_Color15, '')
call s:highlight('Underlined', '', s:carbon_Color21, '')

" Diffs
call s:highlight('DiffAdd', s:carbon_Color12, '', '')
call s:highlight('SignifyLineAdd', s:carbon_Color10, s:carbon_Color22, 'bold')
call s:highlight('SignifySignAdd', s:carbon_Color10, s:carbon_Color22, 'bold')
call s:highlight('DiffDelete', s:carbon_Color13, s:carbon_Color24, '')
call s:highlight('SignifyLineDelete', s:carbon_Color10, s:carbon_Color24, 'bold')
call s:highlight('SignifySignDelete', s:carbon_Color10, s:carbon_Color24, 'bold')
call s:highlight('DiffChange', s:carbon_Color16, '', '')
call s:highlight('SignifyLineChange', s:carbon_Color10, s:carbon_Color23, 'bold')
call s:highlight('SignifySignChange', s:carbon_Color10, s:carbon_Color23, 'bold')
call s:highlight('DiffText', s:carbon_Color24, s:carbon_Color13, '')

" PHP-specific
call s:highlight('phpDocTags', '', s:carbon_Color7, 'bold')
call s:highlight('phpDocParam', '', s:carbon_Color6, '')
call s:highlight('phpDocIdentifier', '', s:carbon_Color1, '')
call s:highlight('phpDocNamespaceSeparator', '', s:carbon_Color6, 'bold')
call s:highlight('phpClasses', '', s:carbon_Color6, '')
call s:highlight('phpStaticClasses', '', s:carbon_Color6, '')
call s:highlight('phpType', '', s:carbon_Color0, '')
call s:highlight('phpKeyword', '', s:carbon_Color0, '')
call s:highlight('phpHereDoc', '', s:carbon_Color3, '')
call s:highlight('phpNowDoc', '', s:carbon_Color3, '')
call s:highlight('phpMemberSelector', '', s:carbon_Color0, '')
call s:highlight('phpOperator', '', s:carbon_Color0, '')
call s:highlight('phpMagicConstants', '', s:carbon_Color1, '')
call s:highlight('phpFunctions', '', s:carbon_Color4, 'bold')
call s:highlight('phpVarSelector', '', s:carbon_Color2, '')
call s:highlight('phpInclude', '', s:carbon_Color0, '')
call s:highlight('phpClasses', '', s:carbon_Color6, '')
call s:highlight('phpParent', '', s:carbon_Color6, '')
call s:highlight('phpSpecialChar', '', s:carbon_Color3, '')
call s:highlight('phpBacktick', s:carbon_Color9, s:carbon_Color8, '')
call s:highlight('phpException', s:carbon_Color9, s:carbon_Color8, '')

" HTML-specific
call s:highlight('htmlTag', '', s:carbon_Color7, '')
call s:highlight('htmlValue', '', s:carbon_Color3, '')
call s:highlight('htmlString', '', s:carbon_Color3, '')
call s:highlight('htmlTagName', '', s:carbon_Color17, '')
call s:highlight('htmlArg', '', s:carbon_Color18, '')

" CSS-specific
call s:highlight('cssProp', '', s:carbon_Color19, '')

" JSON-specific
call s:highlight('jsonKeyword', '', s:carbon_Color6, '')
call s:highlight('jsonBoolean', '', s:carbon_Color0, '')

highlight! link TSString String
highlight! link Folded Comment
highlight! link TSPunctSpecial TSPunctDelimiter
highlight! link TSParameter Constant
highlight! link TSConstant Constant
highlight! link NonText Comment
highlight! link TSConstBuiltin TSVariableBuiltin
highlight! link Conditional Operator
highlight! link Whitespace Comment
highlight! link TSFunction Function
highlight! link TSRepeat Repeat
highlight! link Macro Function
highlight! link TSTagDelimiter Type
highlight! link TelescopeNormal Normal
highlight! link TSTag MyTag
highlight! link TSNamespace TSType
highlight! link TSFloat Number
highlight! link TSField Constant
highlight! link Repeat Conditional
highlight! link TSLabel Type
highlight! link TSPunctBracket MyTag
highlight! link TSType Type
highlight! link TSOperator Operator
highlight! link Operator Keyword
highlight! link TSKeyword Keyword
highlight! link TSFuncMacro Macro
highlight! link TSComment Comment
highlight! link TSParameterReference TSParameter
highlight! link TSProperty TSField
highlight! link TSNumber Number
highlight! link TSConditional Conditional
highlight! link IncSearch Search
