set background=dark
if exists('g:colors_name')
hi clear
if exists('syntax_on')
syntax reset
endif
endif
let g:colors_name = 'lushwal'
highlight Normal guifg=#CABEC4 guibg=#090606 guisp=NONE blend=NONE gui=NONE
highlight! link User Normal
highlight Bold guifg=#CABEC4 guibg=#090606 guisp=NONE blend=NONE gui=bold
highlight Boolean guifg=#EEC34F guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Character guifg=#DAAB3E guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight ColorColumn guifg=#A2969B guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Comment guifg=#CABEC4 guibg=NONE guisp=NONE blend=NONE gui=italic
highlight Conceal guifg=#8E8589 guibg=#090606 guisp=NONE blend=NONE gui=NONE
highlight! link Whitespace Conceal
highlight Conditional guifg=#C887D4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Constant guifg=#EEC34F guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Cursor guifg=#090606 guibg=#CABEC4 guisp=NONE blend=NONE gui=NONE
highlight CursorColumn guifg=#A2969B guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight CursorLine guifg=#8E8589 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight CursorLineNr guifg=#CABEC4 guibg=#090606 guisp=NONE blend=NONE gui=NONE
highlight Debug guifg=#DAAB3E guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Define guifg=#C887D4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Delimiter guifg=#C9A245 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticError guifg=#1FA1A3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticHint guifg=#A5CFAC guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticInfo guifg=#9BA6A2 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticUnderlineError guifg=#1FA1A3 guibg=NONE guisp=#1FA1A3 blend=NONE gui=underline
highlight DiagnosticUnderlineHint guifg=#A5CFAC guibg=NONE guisp=#A5CFAC blend=NONE gui=underline
highlight DiagnosticUnderlineInfo guifg=#9BA6A2 guibg=NONE guisp=#9BA6A2 blend=NONE gui=underline
highlight DiagnosticUnderlineWarn guifg=#5FC4A7 guibg=NONE guisp=#5FC4A7 blend=NONE gui=underline
highlight DiagnosticWarn guifg=#5FC4A7 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiffAdd guifg=#F7B564 guibg=#8E8589 guisp=NONE blend=NONE gui=bold
highlight! link DiffAdded DiffAdd
highlight DiffChange guifg=#B6AAB0 guibg=#8E8589 guisp=NONE blend=NONE gui=NONE
highlight DiffDelete guifg=#DAAB3E guibg=#8E8589 guisp=NONE blend=NONE gui=bold
highlight! link DiffRemoved DiffDelete
highlight! link diffRemoved DiffDelete
highlight DiffFile guifg=#DAAB3E guibg=#090606 guisp=NONE blend=NONE gui=NONE
highlight DiffLine guifg=#374E9A guibg=#090606 guisp=NONE blend=NONE gui=NONE
highlight DiffNewFile guifg=#F7B564 guibg=#090606 guisp=NONE blend=NONE gui=NONE
highlight DiffText guifg=#374E9A guibg=#8E8589 guisp=NONE blend=NONE gui=NONE
highlight Directory guifg=#374E9A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight EndOfBuffer guifg=#CABEC4 guibg=#090606 guisp=NONE blend=NONE gui=NONE
highlight Error guifg=#DAAB3E guibg=#CABEC4 guisp=NONE blend=NONE gui=NONE
highlight ErrorMsg guifg=#DAAB3E guibg=#090606 guisp=NONE blend=NONE gui=NONE
highlight Exception guifg=#DAAB3E guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Float guifg=#EEC34F guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight FoldColumn guifg=#374E9A guibg=#090606 guisp=NONE blend=NONE gui=NONE
highlight Folded guifg=#CABEC4 guibg=#8E8589 guisp=NONE blend=NONE gui=italic
highlight Function guifg=#374E9A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Identifier guifg=#666A8A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight IncSearch guifg=#8E8589 guibg=#EEC34F guisp=NONE blend=NONE gui=NONE
highlight Include guifg=#374E9A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Italic guifg=#CABEC4 guibg=#090606 guisp=NONE blend=NONE gui=italic
highlight Keyword guifg=#C887D4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Label guifg=#FCD864 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight LineNr guifg=#B6AAB0 guibg=#090606 guisp=NONE blend=NONE gui=NONE
highlight Macro guifg=#DAAB3E guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MatchParen guifg=#CABEC4 guibg=#B6AAB0 guisp=NONE blend=NONE gui=NONE
highlight MiniCompletionActiveParameter guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniCursorword guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=underline
highlight! link MiniCursorwordCurrent MiniCursorword
highlight MiniIndentscopePrefix guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=nocombine
highlight MiniIndentscopeSymbol guifg=#A39C8F guibg=#060A0F guisp=NONE blend=NONE gui=NONE
highlight MiniJump guifg=#9BA6A2 guibg=NONE guisp=#D5C9B3 blend=NONE gui=underline
highlight MiniJump2dSpot guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=undercurl
highlight MiniStarterCurrent guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniStarterFooter guifg=#9BA6A2 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight MiniStarterHeader guifg=#9BA6A2 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight MiniStarterInactive guifg=#E9DFCD guibg=NONE guisp=NONE blend=NONE gui=italic
highlight MiniStarterItem guifg=#E9DFCD guibg=#060A0F guisp=NONE blend=NONE gui=NONE
highlight MiniStarterItemBullet guifg=#3AA4A6 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniStarterItemPrefix guifg=#1FA1A3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniStarterQuery guifg=#5DA8A4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniStarterSection guifg=#3AA4A6 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineDevinfo guifg=#E9DFCD guibg=#A39C8F guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineFileinfo guifg=#E9DFCD guibg=#A39C8F guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineFilename guifg=#5FC4A7 guibg=#A39C8F guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineInactive guifg=#BDB29E guibg=#A39C8F guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineModeCommand guifg=#060A0F guibg=#A5CFAC guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineModeInsert guifg=#060A0F guibg=#9BA6A2 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineModeNormal guifg=#060A0F guibg=#5DA8A4 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineModeOther guifg=#060A0F guibg=#C9CBCF guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineModeReplace guifg=#060A0F guibg=#1FA1A3 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineModeVisual guifg=#060A0F guibg=#36BFB1 guisp=NONE blend=NONE gui=NONE
highlight MiniSurround guifg=#A39C8F guibg=#36BFB1 guisp=NONE blend=NONE gui=NONE
highlight MiniTablineCurrent guifg=#D5C9B3 guibg=#A39C8F guisp=NONE blend=NONE gui=NONE
highlight MiniTablineFill guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniTablineHidden guifg=#5DA8A4 guibg=#A39C8F guisp=NONE blend=NONE gui=NONE
highlight MiniTablineModifiedCurrent guifg=#E9DFCD guibg=#A39C8F guisp=NONE blend=NONE gui=NONE
highlight MiniTablineModifiedHidden guifg=#BDB29E guibg=#A39C8F guisp=NONE blend=NONE gui=NONE
highlight MiniTablineModifiedVisible guifg=#E9DFCD guibg=#A39C8F guisp=NONE blend=NONE gui=NONE
highlight MiniTablineVisible guifg=#D5C9B3 guibg=#A39C8F guisp=NONE blend=NONE gui=NONE
highlight MiniTestEmphasis guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=bold
highlight MiniTestFail guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=bold
highlight MiniTestPass guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=bold
highlight MiniTrailspace guifg=#1FA1A3 guibg=#E9DFCD guisp=NONE blend=NONE gui=NONE
highlight ModeMsg guifg=#F7B564 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MoreMsg guifg=#F7B564 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight NonText guifg=#B6AAB0 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Number guifg=#EEC34F guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Operator guifg=#CABEC4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight PMenu guifg=#CABEC4 guibg=#8E8589 guisp=NONE blend=NONE gui=NONE
highlight PMenuSel guifg=#CABEC4 guibg=#374E9A guisp=NONE blend=NONE gui=NONE
highlight PmenuSbar guifg=#A2969B guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight PmenuThumb guifg=#CABEC4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight PreProc guifg=#FCD864 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Question guifg=#374E9A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Repeat guifg=#FCD864 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Search guifg=#B6AAB0 guibg=#FCD864 guisp=NONE blend=NONE gui=NONE
highlight! link MiniTablineTabpagesection Search
highlight SignColumn guifg=#A2969B guibg=#090606 guisp=NONE blend=NONE gui=NONE
highlight Special guifg=#666A8A guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight SpecialChar guifg=#C9A245 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight SpecialKey guifg=#B6AAB0 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight SpellBad guifg=#DAAB3E guibg=NONE guisp=#DAAB3E blend=NONE gui=underline
highlight SpellCap guifg=#FCD864 guibg=NONE guisp=#FCD864 blend=NONE gui=underline
highlight SpellLocal guifg=#666A8A guibg=NONE guisp=#666A8A blend=NONE gui=underline
highlight SpellRare guifg=#C887D4 guibg=NONE guisp=#C887D4 blend=NONE gui=underline
highlight Statement guifg=#DAAB3E guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight StatusLine guifg=#CABEC4 guibg=#8E8589 guisp=NONE blend=NONE gui=NONE
highlight StatusLineNC guifg=#A2969B guibg=#8E8589 guisp=NONE blend=NONE gui=NONE
highlight StatusLineTerm guifg=#F7B564 guibg=#F7B564 guisp=NONE blend=NONE gui=NONE
highlight StatusLineTermNC guifg=#FCD864 guibg=#8E8589 guisp=NONE blend=NONE gui=NONE
highlight StorageClass guifg=#FCD864 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight String guifg=#F7B564 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Structure guifg=#C887D4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight TabLine guifg=#B6AAB0 guibg=#8E8589 guisp=NONE blend=NONE gui=NONE
highlight TabLineFill guifg=#B6AAB0 guibg=#8E8589 guisp=NONE blend=NONE gui=NONE
highlight TabLineSel guifg=#F7B564 guibg=#8E8589 guisp=NONE blend=NONE gui=NONE
highlight Tag guifg=#FCD864 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Title guifg=#374E9A guibg=NONE guisp=NONE blend=NONE gui=bold
highlight Todo guifg=#FCD864 guibg=#8E8589 guisp=NONE blend=NONE gui=NONE
highlight TooLong guifg=#DAAB3E guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Type guifg=#FCD864 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Typedef guifg=#FCD864 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Underlined guifg=#DAAB3E guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight VertSplit guifg=#CABEC4 guibg=#090606 guisp=NONE blend=NONE gui=NONE
highlight! link WinSeparator VertSplit
highlight Visual guifg=#090606 guibg=#A2969B guisp=NONE blend=NONE gui=NONE
highlight VisualNOS guifg=#DAAB3E guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight WarningMsg guifg=#DAAB3E guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight WildMenu guifg=#CABEC4 guibg=#374E9A guisp=NONE blend=NONE gui=NONE
highlight WinBar guifg=#CABEC4 guibg=#090606 guisp=NONE blend=NONE gui=NONE
highlight WinBarNC guifg=#A2969B guibg=#090606 guisp=NONE blend=NONE gui=NONE
highlight gitCommitOverflow guifg=#DAAB3E guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight gitCommitSummary guifg=#F7B564 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight helpCommand guifg=#FCD864 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight helpExample guifg=#FCD864 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @attribute guifg=#9BA6A2 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @boolean guifg=#9BA6A2 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @character guifg=#5FC4A7 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @character.special guifg=#3AA4A6 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @comment guifg=#E9DFCD guibg=NONE guisp=NONE blend=NONE gui=italic
highlight @conditional guifg=#1FA1A3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @constant guifg=#1FA1A3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @constant.builtin guifg=#1FA1A3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @constant.macro guifg=#1FA1A3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @constructor guifg=#E9DFCD guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @debug guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @define guifg=#C9CBCF guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @exception guifg=#1FA1A3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @field guifg=#5DA8A4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @float guifg=#9BA6A2 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @function guifg=#9BA6A2 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @function.builtin guifg=#1FA1A3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @function.macro guifg=#1FA1A3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @include guifg=#A5CFAC guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @keyword guifg=#C9CBCF guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @keyword.function guifg=#A5CFAC guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @keyword.operator guifg=#C9CBCF guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @label guifg=#A5CFAC guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @method guifg=#9BA6A2 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @namespace guifg=#9BA6A2 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @none guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @number guifg=#9BA6A2 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @operator guifg=#E9DFCD guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @parameter guifg=#5FC4A7 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @preproc guifg=#5FC4A7 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @property guifg=#5FC4A7 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @punctuation.bracket guifg=#E9DFCD guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @punctuation.delimiter guifg=#E9DFCD guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @punctuation.special guifg=#A5CFAC guibg=NONE guisp=NONE blend=NONE gui=bold
highlight @repeat guifg=#1FA1A3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @storageclass guifg=#5FC4A7 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @string guifg=#9BA6A2 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @string.escape guifg=#5DA8A4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @string.regex guifg=#5DA8A4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @string.special guifg=#3AA4A6 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @symbol guifg=#A5CFAC guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @tag guifg=#5FC4A7 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @tag.attribute guifg=#A5CFAC guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @tag.delimiter guifg=#A5CFAC guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text guifg=#5DA8A4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.bold guifg=#5FC4A7 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight @text.danger guifg=#1FA1A3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.diff.add guifg=#5DA8A4 guibg=#A39C8F guisp=NONE blend=NONE gui=bold
highlight @text.diff.delete guifg=#1FA1A3 guibg=#A39C8F guisp=NONE blend=NONE gui=bold
highlight @text.emphasis guifg=#C9CBCF guibg=NONE guisp=NONE blend=NONE gui=italic
highlight @text.environment guifg=#1FA1A3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.environment.name guifg=#5FC4A7 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.literal guifg=#5DA8A4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.math guifg=#A5CFAC guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.note guifg=#A5CFAC guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.reference guifg=#1FA1A3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.strike guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=strikethrough
highlight @text.title guifg=#9BA6A2 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight @text.todo guifg=#5FC4A7 guibg=#A39C8F guisp=NONE blend=NONE gui=NONE
highlight @text.underline guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=underline
highlight @text.uri guifg=NONE guibg=#A39C8F guisp=NONE blend=NONE gui=underline
highlight @type guifg=#9BA6A2 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @type.builtin guifg=#9BA6A2 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @type.definition guifg=#5FC4A7 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @variable guifg=#5FC4A7 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @variable.builtin guifg=#1FA1A3 guibg=NONE guisp=NONE blend=NONE gui=NONE
