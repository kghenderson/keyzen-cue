
# Commands

|Cat|Human|Bindings|CommandName|JetbrainsName|VsCodeName|SublimeTextName|
|---|---|---|---|---|---|---|
|Cursor|Up|"up"<br />"hyper+i"|CursorMoveToLineBackward|Up|cursorDown|{"command": "move_to", "args": {"by": "lines", "forward": false, "extend": false}}|
|Cursor|Up+|"shift+up"<br />"hyper+shift+i"|CursorMoveToLineBackwardSelect|Up with Selection|cursorDownSelect|{"command": "move_to", "args": {"by": "lines", "forward": false, "extend": true}}|
|Cursor|Down|"down"<br />"hyper+k"|CursorMoveToLineForward|Down|cursorUp|{"command": "move_to", "args": {"by": "lines", "forward": true, "extend": false}}|
|Cursor|Down+|"shift+down"<br />"hyper+shift+k"|CursorMoveToLineForwardSelect|Down with Selection|cursorUpSelect|{"command": "move_to", "args": {"by": "lines", "forward": true, "extend": true}}|
|Cursor|Left|"left"<br />"hyper+j"|CursorMoveToCharBackward|Left|cursorLeft|{"command": "move_to", "args": {"by": "characters", "forward": false, "extend": false}}|
|Cursor|Left+|"shift+left"<br />"hyper+shift+j"|CursorMoveToCharBackwardSelect|Left with Selection|cursorLeftSelect|{"command": "move_to", "args": {"by": "characters", "forward": false, "extend": true}}|
|Cursor|Right|"right"<br />"hyper+l"|CursorMoveToCharForward|Right|cursorRight|{"command": "move_to", "args": {"by": "characters", "forward": true, "extend": false}}|
|Cursor|Right+|"shift+right"<br />"hyper+shift+k"|CursorMoveToCharForwardSelect|Right with Selection|cursorRightSelect|{"command": "move_to", "args": {"by": "characters", "forward": true, "extend": true}}|
|Cursor|Page Up|"pgup"<br />"hyper+y"|CursorMoveToPageBackward|Page Up|cursorPageUp|{"command": "move_to", "args": {"by": "pages", "forward": false, "extend": false}}|
|Cursor|Page Up+|-|CursorMoveToPageBackwardSelect|-|-|-|
|Cursor|Page Down|"pgdn"<br />"hyper+h"|CursorMoveToPageForward|Page Down|cursorPageDown|{"command": "move_to", "args": {"by": "pages", "forward": true, "extend": false}}|
|Cursor|Page Down|-|CursorMoveToPageForwardSelect|-|-|-|
|Cursor|Line Begin|"home"<br />"hyper+u"<br />"pinky+thumb+left"|CursorMoveToLineBegin|Move Caret to Line Start|cursorLineStart|{"command": "move_to", "args": {"to": "bol", "extend": false}}|
|Cursor|Line Begin+|"shift+home"<br />"hyper+shift+u"|CursorMoveToLineBeginSelect|Move Caret to Line Start with Selection|cursorLineStartSelect|{"command": "move_to", "args": {"to": "bol", "extend": true}}|
|Cursor|Line End|"home"<br />"hyper+o"<br />"pinky+thumb+right"|CursorMoveToLineEnd|Move Caret to Line End|cursorLineEnd|{"command": "move_to", "args": {"to": "eol", "extend": false}}|
|Cursor|Line End+|"shift+end"<br />"hyper+shift+o"|CursorMoveToLineEndSelect|Move Caret to Line End with Selection|cursorLineEndSelect|{"command": "move_to", "args": {"to": "eol", "extend": true}}|
|Cursor|File Begin|"home"<br />"hyper+t"|CursorMoveToTextBegin|Move Caret to Text Start|cursorTop|{"command": "move_to", "args": {"to": "bof", "extend": false}}|
|Cursor|Text Begin+|"ctrl+shift+end"<br />"hyper+shift+b"|CursorMoveToTextBeginSelect|Move Caret to Text Begin with Selection|cursorTopSelect|{"command": "move_to", "args": {"to": "bof", "extend": true}}|
|Cursor|File End|"home"<br />"hyper+b"|CursorMoveToTextEnd|Move Caret to Text End|cursorBottom|{"command": "move_to", "args": {"to": "eof", "extend": false}}|
|Cursor|Text End+|"ctrl+shift+end"<br />"hyper+shift+b"|CursorMoveToTextEndSelect|Move Caret to Text End with Selection|cursorBottomSelect|{"command": "move_to", "args": {"to": "eof", "extend": true}}|
|Cursor|Word Left|-|CursorMoveToWordBackward|Move Caret to Previous Word|cursorWordLeft|{"command": "move_to", "args": {"by": "words", "forward": false}}|
|Cursor|Word Left+|-|CursorMoveToWordBackwardSelect|-|cursorWordLeftSelect|-|
|Cursor|Word Right|-|CursorMoveToWordForward|Move Caret to Next Word|cursorWordRight|{"command": "move_to", "args": {"by": "words", "forward": true}}|
|Cursor|Word Right|-|CursorMoveToWordForwardSelect|-|cursorWordRightSelect|-|
|Cursor|Subword Left|-|CursorMoveToSubwordBackward|Move Caret to Previous Word in Different "CamelHumps" Mode|cursorWordPartLeft|-|
|Cursor|Subword Left+|-|CursorMoveToSubwordBackwardSelect|Move Caret to Previous Word in Different "CamelHumps" Mode with Selection|cursorWordPartLeftSelect|-|
|Cursor|Subword Right|-|CursorMoveToSubwordForward|Move Caret to Next Word in Different "CamelHumps" Mode|cursorWordPartRight|-|
|Cursor|Subword Right+|-|CursorMoveToSubwordForwardSelect|Move Caret to Next Word in Different "CamelHumps" Mode with Selection|cursorWordPartRightSelect|-|
|Cursor|Contract Selection|-|CursorSelectionExpand|-|-|-|
|Cursor|Expand Selection|-|CursorSelectionContract|-|-|-|
|---|---|---|---|---|---|---|
|Edit|Move Up|-|EditNodeMoveLineUp|Move Line Up|-|-|
|Edit|Move Down|-|EditNodeMoveLineDown|Move Line Down|-|-|
|Edit|Move Right|-|EditNodeMoveLineOut|Move Line Left|-|-|
|Edit|Move Left|-|EditNodeMoveLineIn|Move Line Right|-|-|
|Edit|Rename|-|EditNodeRename|-|-|-|
|Edit|Delete|-|EditNodeDelete|-|-|-|