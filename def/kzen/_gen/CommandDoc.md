
# Commands

|Cat|Human|Bindings|CommandName|JetbrainsName|VsCodeName|SublimeTextName|
|---|---|---|---|---|---|---|
|Cursor|Up|"up"<br />"hyper+i"|CursorMoveToLineBackward|Up|cursorDown|{"command": "move_to", "args": {"by": "lines", "forward": false, "extend": false}}|
|Cursor|Down|"down"<br />"hyper+k"|CursorMoveToLineForward|Down|cursorUp|{"command": "move_to", "args": {"by": "lines", "forward": true, "extend": false}}|
|Cursor|Left|"left"<br />"hyper+j"|CursorMoveToCharBackward|Left|cursorLeft|{"command": "move_to", "args": {"by": "characters", "forward": false, "extend": false}}|
|Cursor|Right|"right"<br />"hyper+l"|CursorMoveToCharForward|Right|cursorRight|{"command": "move_to", "args": {"by": "characters", "forward": true, "extend": false}}|
|Cursor|Page Up|"pgup"<br />"hyper+y"|CursorMoveToPageBackward|Page Up|cursorPageUp|{"command": "move_to", "args": {"by": "pages", "forward": false, "extend": false}}|
|Cursor|Page Down|"pgdn"<br />"hyper+h"|CursorMoveToPageForward|Page Down|cursorPageDown|{"command": "move_to", "args": {"by": "pages", "forward": true, "extend": false}}|
|Cursor|Line Begin|"home"<br />"hyper+u"<br />"pinky+thumb+left"|CursorMoveToLineBegin|Move Caret to Line Start|-|{"command": "move_to", "args": {"to": "bol", "extend": false}}|
|Cursor|Line End|"home"<br />"hyper+o"<br />"pinky+thumb+right"|CursorMoveToLineEnd|Move Caret to Line End|-|{"command": "move_to", "args": {"to": "eol", "extend": false}}|
|Cursor|File Begin|"home"<br />"hyper+t"|CursorMoveToTextBegin|Move Caret to Text Start|-|{"command": "move_to", "args": {"to": "bof", "extend": false}}|
|Cursor|File End|"home"<br />"hyper+b"|CursorMoveToTextEnd|Move Caret to Text End|-|{"command": "move_to", "args": {"to": "eof", "extend": false}}|
|Cursor|Word Left|-|CursorMoveToWordBackward|Move Caret to Previous Word|-|{"command": "move_to", "args": {"by": "words", "forward": false}}|
|Cursor|Word Right|-|CursorMoveToWordForward|Move Caret to Next Word|-|{"command": "move_to", "args": {"by": "words", "forward": true}}|
|Cursor|Subword Left|-|CursorMoveToSubwordBackward|-|-|-|
|Cursor|Subword Right|-|CursorMoveToSubwordForward|-|-|-|
|---|---|---|---|---|---|---|
|Select|Down|"shift+down"<br />"hyper+shift+k"|CursorMoveToLineForwardSelect|Down with Selection|cursorUpSelect|{"command": "move_to", "args": {"by": "lines", "forward": true, "extend": true}}|
|Select|Up|"shift+up"<br />"hyper+shift+i"|CursorMoveToLineBackwardSelect|Up with Selection|cursorDownSelect|{"command": "move_to", "args": {"by": "lines", "forward": false, "extend": true}}|
|Select|Right|"shift+right"<br />"hyper+shift+k"|CursorMoveToCharForwardSelect|Right with Selection|cursorRightSelect|{"command": "move_to", "args": {"by": "characters", "forward": true, "extend": true}}|
|Select|Left|"shift+left"<br />"hyper+shift+j"|CursorMoveToCharBackwardSelect|Left with Selection|cursorLeftSelect|{"command": "move_to", "args": {"by": "characters", "forward": false, "extend": true}}|
|Select|Line End|"shift+end"<br />"hyper+shift+o"|CursorMoveToLineEndSelect|Move Caret to Line End with Selection|-|{"command": "move_to", "args": {"to": "eol", "extend": true}}|
|Select|Line Begin|"shift+home"<br />"hyper+shift+u"|CursorMoveToLineBeginSelect|Move Caret to Line Start with Selection|-|{"command": "move_to", "args": {"to": "bol", "extend": true}}|
|Select|Text End|"ctrl+shift+end"<br />"hyper+shift+b"|CursorMoveToTextEndSelect|Move Caret to Text End with Selection|-|{"command": "move_to", "args": {"to": "eof", "extend": true}}|
|Select|Text Begin|"ctrl+shift+end"<br />"hyper+shift+b"|CursorMoveToTextBeginSelect|Move Caret to Text Begin with Selection|-|{"command": "move_to", "args": {"to": "bof", "extend": true}}|
|---|---|---|---|---|---|---|
|Cursor|Word Right|-|CursorMoveToWordForwardSelect|-|-|-|
|Cursor|Word Left|-|CursorMoveToWordBackwardSelect|-|-|-|
|Cursor|Subword Right|-|CursorMoveToSubwordForwardSelect|-|-|-|
|Cursor|Subword Left|-|CursorMoveToSubwordBackwardSelect|-|-|-|
