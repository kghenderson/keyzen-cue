
# Commands

|Cat|Human|Bindings|CommandName|JetbrainsName|SublimeTextName|
|---|---|---|---|---|---|
|Cursor|Up|"up"<br />"hyper+i"|CursorMoveLineBackward|Up|move_to", "args": {"by": "lines", "forward": false, "extend": false}|
|Cursor|Down|"down"<br />"hyper+k"|CursorMoveLineForward|Down|move_to", "args": {"by": "lines", "forward": true, "extend": false}|
|Cursor|Left|"left"<br />"hyper+j"|CursorMoveCharBackward|Left|move_to", "args": {"by": "characters", "forward": false, "extend": false}|
|Cursor|Right|"right"<br />"hyper+l"|CursorMoveCharForward|Right|move_to", "args": {"by": "characters", "forward": true, "extend": false}|
|Cursor|Page Up|"pgup"<br />"hyper+y"|CursorMovePageBackward|Page Up|move_to", "args": {"by": "pages", "forward": false, "extend": false}|
|Cursor|Page Down|"pgdn"<br />"hyper+h"|CursorMovePageForward|Page Down|move_to", "args": {"by": "pages", "forward": true, "extend": false}|
|Cursor|Line Begin|"home"<br />"hyper+u"<br />"pinky+thumb+left"|CursorMoveLineBegin|Move Caret to Line Start|move_to", "args": {"to": "bol", "extend": false}|
|Cursor|Line End|"home"<br />"hyper+o"<br />"pinky+thumb+right"|CursorMoveLineEnd|Move Caret to Line End|move_to", "args": {"to": "eol", "extend": false}|
|Cursor|Text Begin|"home"<br />"hyper+t"|CursorMoveTextBegin|Move Caret to Text Start|move_to", "args": {"to": "bof", "extend": false}|
|Cursor|Text End|"home"<br />"hyper+b"|CursorMoveTextEnd|Move Caret to Text End|move_to", "args": {"to": "eof", "extend": false}|
|---|---|---|---|---|---|
|Select|Up|"shift+up"<br />"hyper+shift+i"|CursorSelectLineBackward|Up with Selection|move_to", "args": {"by": "lines", "forward": false, "extend": true}|
|Select|Down|"shift+down"<br />"hyper+shift+k"|CursorSelectLineForward|Down with Selection|move_to", "args": {"by": "lines", "forward": true, "extend": true}|
|Select|Left|"shift+left"<br />"hyper+shift+j"|CursorSelectCharBackward|Left with Selection|move_to", "args": {"by": "characters", "forward": false, "extend": true}|
|Select|Right|"shift+right"<br />"hyper+shift+k"|CursorSelectCharForward|Right with Selection|move_to", "args": {"by": "characters", "forward": true, "extend": true}|
|Select|Line Begin|"shift+home"<br />"hyper+shift+u"|CursorSelectLineBegin|Move Caret to Line Start with Selection|move_to", "args": {"to": "bol", "extend": true}|
|Select|Line End|"shift+end"<br />"hyper+shift+o"|CursorSelectLineEnd|Move Caret to Line End with Selection|move_to", "args": {"to": "eol", "extend": true}|
|Select|Text Begin|"ctrl+shift+end"<br />"hyper+shift+b"|CursorSelectTextBegin|Move Caret to Text Begin with Selection|move_to", "args": {"to": "bof", "extend": true}|
|Select|Text End|"ctrl+shift+end"<br />"hyper+shift+b"|CursorSelectTextEnd|Move Caret to Text End with Selection|move_to", "args": {"to": "eof", "extend": true}|
