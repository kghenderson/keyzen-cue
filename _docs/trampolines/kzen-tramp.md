Inspired by the Trampoline files for VI & Kakoune.

## Major Categories

- Selecting & Cursor Movement
- Multi-Cursors
- Outlining/Inserting
- Tables
- Folding (Collapse/Expand)
- Search & Replace
- Window Splitting/Selection

Arrow Keys:
Up/Down Left/Right
Word: Ctrl
Subword:
Line: Ctrl+Alt

## Arrow Keys

| x   |       Group | Cmd               | Key                            | Select                               | Notes   | Jetbrains Name                                               | SublimeText                                                                                |
|-----|------------:|-------------------|--------------------------------|--------------------------------------|---------|--------------------------------------------------------------|--------------------------------------------------------------------------------------------|
| x   |      Cursor | Up                | <kbd>Up</kbd>                  | <kbd>Shift+Up</kbd>                  |         | Up                                                           | "move_to", "args": {"by": "lines", "forward": false}                                       |
| x   |      Cursor | Down              | <kbd>Down</kbd>                | <kbd>Shift+Down</kbd>                |         | Down                                                         | "move_to", "args": {"by": "lines", "forward": true}                                        |
| x   |      Cursor | Left              | <kbd>Left</kbd>                | <kbd>Shift+Left</kbd>                |         | Left                                                         | "move_to", "args": {"by": "characters", "forward": false}                                  |
| x   |      Cursor | Right             | <kbd>Right</kbd>               | <kbd>Shift+Right</kbd>               |         | Right                                                        | "move_to", "args": {"by": "characters", "forward": true}                                   |
| x   |      Cursor | Page Up           | <kbd>PgUp</kbd>                | <kbd>Shift+PgUp</kbd>                |         | Page Up                                                      | "move_to", "args": {"by": "pages", "forward": false}                                       |
| x   |      Cursor | Page Dn           | <kbd>PgDn</kbd>                | <kbd>Shift+PgDn</kbd>                |         | Page Down                                                    | "move_to", "args": {"by": "pages", "forward": true}                                        |
| x   |      Cursor | Line Beg          | <kbd>Home</kbd>                | <kbd>Shift+Home</kbd>                |         | Move Caret to Line Start                                     | "move_to", "args": {"to": "bol", "extend": false}                                          |
| x   |      Cursor | Line End          | <kbd>End</kbd>                 | <kbd>Shift+End</kbd>                 |         | Move Caret to Line End                                       | "move_to", "args": {"to": "eol", "extend": false}                                          |
| x   |      Cursor | File Beg          | <kbd>Ctrl+Home</kbd>           | <kbd>Ctrl+Shift+Home</kbd>           |         | Move Caret to Text Start                                     | "move_to", "args": {"to": "bof", "extend": false}                                          |
| x   |      Cursor | File End          | <kbd>Ctrl+End</kbd>            | <kbd>Ctrl+Shift+End</kbd>            |         | Move Caret to Text End                                       | "move_to", "args": {"to": "eof", "extend": false}                                          |
|     |    -------: | ---------------   | ------------------------------ | ------------------------------------ | ------- | ------------------------------------------------------------ | -----------------------------------------------------------                                |
|     |      Cursor | Word Left         | <kbd>Pinky+Left</kbd>          | <kbd>Pinky+Shift+Left</kbd>          |         | Move Caret to Previous Word                                  | "move_to", "args": {"by": "words", "forward": false}                                       |
|     |      Cursor | Word Right        | <kbd>Pinky+Right</kbd>         | <kbd>Pinky+Shift+Right</kbd>         |         | Move Caret to Next Word                                      | "move_to", "args": {"by": "words", "forward": true}                                        |
|     |      Cursor | Up                | <kbd>Pinky+Up</kbd>            | <kbd>Pinky+Shift+Up</kbd>            |         | Up                                                           | "move_to", "args": {"by": "lines", "forward": false}                                       |
|     |      Cursor | Down              | <kbd>Pinky+Down</kbd>          | <kbd>Pinky+Shift+Down</kbd>          |         | Down                                                         | ---                                                                                        |
|     |      Cursor | Line Beg          | <kbd>Pinky+Thumb+Left</kbd>    | <kbd>Pinky+Shift+Left</kbd>          |         | Move Caret to Line Start                                     | ---                                                                                        |
|     |      Cursor | Line End          | <kbd>Pinky+Thumb+Right</kbd>   | <kbd>Pinky+Shift+Right</kbd>         |         | Move Caret to Line End                                       | ---                                                                                        |
|     |    -------: | ---------------   | ------------------------------ | ------------------------------------ | ------- | ------------------------------------------------------------ | -----------------------------------------------------------                                |
|     |      Cursor | Subword Left      | <kbd>Thumb+Left</kbd>          | <kbd>Thumb+Shift+Left</kbd>          |         | Move Caret to Previous Word in Different "CamelHumps" Mode   | "move_to", "args": {"by": "subwords", "forward": false}                                    |
|     |      Cursor | Subword Right     | <kbd>Thumb+Right</kbd>         | <kbd>Thumb+Shift+Right</kbd>         |         | Move Caret to Next Word in Different "CamelHumps" Mode       | "move_to", "args": {"by": "subwords", "forward": true}                                     |
|     |        Page | Scroll Up         | <kbd>Thumb+Up</kbd>            | ---                                  |         | Scroll Up                                                    | "scroll_lines", "args": {"amount": 1.0 }                                                   |
|     |        Page | Scroll Down       | <kbd>Thumb+Down</kbd>          | ---                                  |         | Scroll Down                                                  | "scroll_lines", "args": {"amount": -1.0 }                                                  |
|     | MultiCursor | Carets Above      | <kbd>Thumb+Shift+Up</kbd>      | ---                                  |         | Clone Caret Above                                            | "select_lines", "args": {"forward": false}                                                 |
|     | MultiCursor | Carets Below      | <kbd>Thumb+Shift+Down</kbd>    | ---                                  |         | Clone Caret Below                                            | "select_lines", "args": {"forward": true}                                                  |
|     | MultiCursor | Carets Lines      | <kbd>Thumb+Shift+/</kbd>       | ---                                  |         | Add Carets to Ends of Selected Lines                         | "split_selection_into_lines"                                                               |
|     | MultiCursor | Carets Align      | <kbd>Thumb+Shift+\</kbd>       | ---                                  |         | Align Carets (String Manipulation)                           |                                                                                            |
|     |    -------: | ---------------   | ------------------------------ | ------------------------------------ | ------- | ------------------------------------------------------------ | -----------------------------------------------------------                                |
|     |        Edit | Move Line Up      | <kbd>Pinky+Shift+Up</kbd>      | ---                                  |         | Move Line Up                                                 | "swap_line_up"                                                                             |
|     |        Edit | Move Line Down    | <kbd>Pinky+Shift+Down</kbd>    |                                      |         | Move Line Down                                               | "swap_line_down"                                                                           |
|     |        Edit | Move Line Left    | <kbd>Pinky+Shift+Left</kbd>    |                                      |         | Indent Line or Selection                                     | "unindent"                                                                                 |
|     |        Edit | Move Line Right   | <kbd>Pinky+Shift+Right</kbd>   |                                      |         | Unindent Line or Selection                                   | "indent"                                                                                   |
|     |        Edit | Insert Line Above | <kbd>Pinky+Shift+U</kbd>       |                                      |         | Start New Line Before Current                                | "run_macro_file", "args": {"file": "res://Packages/Default/Add Line Before.sublime-macro"} |
|     |        Edit | Insert Line Below | <kbd>Pinky+Shift+N</kbd>       |                                      |         | Start New Line                                               | "run_macro_file", "args": {"file": "res://Packages/Default/Add Line.sublime-macro"}        |
|     |        Edit | Insert Child      | <kbd>Pinky+Shift+M</kbd>       |                                      |         | Start New Line                                               | "run_macro_file", "args": {"file": "res://Packages/Default/Add Line.sublime-macro"}        |
|     |        Edit | Delete Line       | <kbd>Pinky+Shift+.</kbd>       |                                      |         | Delete Line                                                  | "run_macro_file", "args": {"file": "res://Packages/Default/Delete Line.sublime-macro"}     |
|     |    -------: | ---------------   | ------------------------------ | ------------------------------------ | ------- | ------------------------------------------------------------ | -----------------------------------------------------------                                |
 |     |      Select | All               | <kbd>Thumb+Shift+a</kbd>       |                                      |         |                                                              |                                                                                            |
|     |      Select | Expand            | <kbd>Thumb+Shift+e</kbd>       |                                      |         |                                                              |                                                                                            |
|     |      Select | Contract          | <kbd>Thumb+Shift+d</kbd>       |                                      |         |                                                              |                                                                                            |
|     |      Select | Word Occur        | <kbd>Thumb+Shift+a</kbd>       |                                      |         |                                                              |                                                                                            |
|     |      Select | Prev Occur        | <kbd>Thumb+Shift+w</kbd>       |                                      |         |                                                              |                                                                                            |
|     |      Select | Next Occur Word   | <kbd>Thumb+Shift+s</kbd>       |                                      |         |                                                              |                                                                                            |
|     |    -------: | ---------------   | ------------------------------ | ------------------------------------ | ------- | ------------------------------------------------------------ | -----------------------------------------------------------                                |
|     |    -------: | ---------------   | ------------------------------ | ------------------------------------ | ------- | ------------------------------------------------------------ | -----------------------------------------------------------                                |

               


| Line | Delete | <kbd>Pinky+Shift+.</kbd>     | | | | <kbd></kbd>                                  |
| Join | Join | <kbd>Pinky+Shift+O</kbd>     | | | | <kbd></kbd>                                  |
| Split | Split | <kbd>Pinky+Shift+Enter</kbd> | | | | <kbd></kbd>                                  |
| | ------------- | -------------------- | | ------------------- | | ---------------------------------------- |
| Search | Current File | <kbd>Pinky+f</kbd>           | | | | <kbd></kbd>                                  |
| Replace | Current File | <kbd>Pinky+r</kbd>           | | | | <kbd></kbd>                                  |
| Search | Current File | <kbd>Pinky+f</kbd>           | | | | <kbd></kbd>                                  |
| Replace | Current File | <kbd>Pinky+r</kbd>           | | | | <kbd></kbd>                                  |
| | ------------- | -------------------- | | ------------------- | | ---------------------------------------- |
| Misc | ------------- | -------------------- | | ------------------- | | ---------------------------------------- |
| | Execute | <kbd>Pinky+e</kbd>           | | | | <kbd></kbd>                                  |
| | Goto | <kbd>Pinky+g</kbd>           | | | | <kbd></kbd>                                  |
| | Undo | <kbd>Pinky+z</kbd>           | | | | <kbd></kbd>                                  |
| | Redo | <kbd>Pinky+Shift+z</kbd>     | | | | <kbd></kbd>                                  |
| | Copy | <kbd>Pinky+c</kbd>           | | | | <kbd></kbd>                                  |
| | Paste | <kbd>Pinky+v</kbd>           | | | | <kbd></kbd>                                  |
| Zoom | In | <kbd>Pinky+plus</kbd>        | | | | <kbd></kbd>                                  |
| Zoom | Out | <kbd>Pinky+minus</kbd>       | | | | <kbd></kbd>                                  |
| | Comment | <kbd>Pinky+/</kbd>           | | | | <kbd></kbd>                                  |
| | Settings | <kbd>Pinky+,</kbd>           | | | | <kbd></kbd>                                  |
| | Reformat | <kbd>Pinky+,</kbd>           | | | | <kbd></kbd>                                  |
| | Sort | | | | | <kbd></kbd>                                  |
| | Bookmarks | | | | | <kbd></kbd>                                  |
| | | | | | | <kbd></kbd>                                  |
| | Hoist | <kbd></kbd>                  | | | | <kbd></kbd>                                  |
                
Quote/Unquote: Ctrl+Quote

| | Volume Up | <kbd></kbd>                  | | | | <kbd></kbd>                                  |
| | Volume Down | <kbd></kbd>                  | | | | <kbd></kbd>                                  |
| | Play/Pause | <kbd></kbd>                  | | | | <kbd></kbd>                                  |
| | Next | <kbd></kbd>                  | | | | <kbd></kbd>                                  |
| | Prev | <kbd></kbd>                  | | | | <kbd></kbd>                                  |

```

```

# Moving Statements

Up
Down
Left (Unindent, Dedent, Move Out)
Right (Indent, Move In)

Preferences:
