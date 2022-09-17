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

|    Group | Cmd               | Key                            | Select                               | Notes   | Jetbrains Name                                               | SublimeText                                                                                |
|---------:|-------------------|--------------------------------|--------------------------------------|---------|--------------------------------------------------------------|--------------------------------------------------------------------------------------------|
|   Cursor | Up                | <kbd>Up</kbd>                  | <kbd>Shift+Up</kbd>                  |         | Up                                                           | "move_to", "args": {"by": "lines", "forward": false}                                       |
|   Cursor | Down              | <kbd>Down</kbd>                | <kbd>Shift+Down</kbd>                |         | Down                                                         | "move_to", "args": {"by": "lines", "forward": true}                                        |
|   Cursor | Left              | <kbd>Left</kbd>                | <kbd>Shift+Left</kbd>                |         | Left                                                         | "move_to", "args": {"by": "characters", "forward": false}                                  |
|   Cursor | Right             | <kbd>Right</kbd>               | <kbd>Shift+Right</kbd>               |         | Right                                                        | "move_to", "args": {"by": "characters", "forward": true}                                   |
|   Cursor | Page Up           | <kbd>PgUp</kbd>                | <kbd>Shift+PgUp</kbd>                |         | Page Up                                                      | "move_to", "args": {"by": "pages", "forward": false}                                       |
|   Cursor | Page Dn           | <kbd>PgDn</kbd>                | <kbd>Shift+PgDn</kbd>                |         | Page Down                                                    | "move_to", "args": {"by": "pages", "forward": true}                                        |
|   Cursor | Line Beg          | <kbd>Home</kbd>                | <kbd>Shift+Home</kbd>                |         | Move Caret to Line Start                                     | "move_to", "args": {"to": "bol", "extend": false}                                          |
|   Cursor | Line End          | <kbd>End</kbd>                 | <kbd>Shift+End</kbd>                 |         | Move Caret to Line End                                       | "move_to", "args": {"to": "eol", "extend": false}                                          |
|   Cursor | File Beg          | <kbd>Ctrl+Home</kbd>           | <kbd>Ctrl+Shift+Home</kbd>           |         | Move Caret to Text Start                                     | "move_to", "args": {"to": "bof", "extend": false}                                          |
|   Cursor | File End          | <kbd>Ctrl+End</kbd>            | <kbd>Ctrl+Shift+End</kbd>            |         | Move Caret to Text End                                       | "move_to", "args": {"to": "eof", "extend": false}                                          |
| -------: | ---------------   | ------------------------------ | ------------------------------------ | ------- | ------------------------------------------------------------ | -----------------------------------------------------------                                |
|   Cursor | Word Left         | <kbd>Pinky+Left</kbd>          | <kbd>Pinky+Shift+Left</kbd>          |         | Move Caret to Previous Word                                  | "move_to", "args": {"by": "words", "forward": false}                                       |
|   Cursor | Word Right        | <kbd>Pinky+Right</kbd>         | <kbd>Pinky+Shift+Right</kbd>         |         | Move Caret to Next Word                                      | "move_to", "args": {"by": "words", "forward": true}                                        |
|   Cursor | Up                | <kbd>Pinky+Up</kbd>            | <kbd>Pinky+Shift+Up</kbd>            |         | Up                                                           | "move_to", "args": {"by": "lines", "forward": false}                                       |
|   Cursor | Down              | <kbd>Pinky+Down</kbd>          | <kbd>Pinky+Shift+Down</kbd>          |         | Down                                                         | ---                                                                                        |
|   Cursor | Line Beg          | <kbd>Pinky+Thumb+Left</kbd>    | <kbd>Pinky+Shift+Left</kbd>          |         | Move Caret to Line Start                                     | ---                                                                                        |
|   Cursor | Line End          | <kbd>Pinky+Thumb+Right</kbd>   | <kbd>Pinky+Shift+Right</kbd>         |         | Move Caret to Line End                                       | ---                                                                                        |
| -------: | ---------------   | ------------------------------ | ------------------------------------ | ------- | ------------------------------------------------------------ | -----------------------------------------------------------                                |
|   Cursor | Subword Left      | <kbd>Thumb+Left</kbd>          | <kbd>Thumb+Shift+Left</kbd>          |         | Move Caret to Previous Word in Different "CamelHumps" Mode   | "move_to", "args": {"by": "subwords", "forward": false}                                    |
|   Cursor | Subword Right     | <kbd>Thumb+Right</kbd>         | <kbd>Thumb+Shift+Right</kbd>         |         | Move Caret to Next Word in Different "CamelHumps" Mode       | "move_to", "args": {"by": "subwords", "forward": true}                                     |
|     Page | Scroll Up         | <kbd>Thumb+Up</kbd>            | ---                                  |         | Scroll Up                                                    | "scroll_lines", "args": {"amount": 1.0 }                                                   |
|     Page | Scroll Down       | <kbd>Thumb+Down</kbd>          | ---                                  |         | Scroll Down                                                  | "scroll_lines", "args": {"amount": -1.0 }                                                  |
|    Multi | Carets Above      | <kbd>Thumb+Shift+Up</kbd>      | ---                                  |         | Clone Caret Above                                            | "select_lines", "args": {"forward": false}                                                 |
|    Multi | Carets Below      | <kbd>Thumb+Shift+Down</kbd>    | ---                                  |         | Clone Caret Below                                            | "select_lines", "args": {"forward": true}                                                  |
|    Multi | Carets Lines      | <kbd>Thumb+Shift+/</kbd>       | ---                                  |         | Add Carets to Ends of Selected Lines                         | "split_selection_into_lines"                                                               |
|    Multi | Carets Align      | <kbd>Thumb+Shift+\</kbd>       | ---                                  |         | Align Carets (String Manipulation)                           |                                                                                            |
| -------: | ---------------   | ------------------------------ | ------------------------------------ | ------- | ------------------------------------------------------------ | -----------------------------------------------------------                                |
|     Edit | Move Line Up      | <kbd>Pinky+Shift+Up</kbd>      | ---                                  |         | Move Line Up                                                 | "swap_line_up"                                                                             |
|     Edit | Move Line Down    | <kbd>Pinky+Shift+Down</kbd>    |                                      |         | Move Line Down                                               | "swap_line_down"                                                                           |
|     Edit | Move Line Left    | <kbd>Pinky+Shift+Left</kbd>    |                                      |         | Indent Line or Selection                                     | "unindent"                                                                                 |
|     Edit | Move Line Right   | <kbd>Pinky+Shift+Right</kbd>   |                                      |         | Unindent Line or Selection                                   | "indent"                                                                                   |
|     Edit | Insert Line Above | <kbd>Pinky+Thumb+U</kbd>       |                                      |         | Start New Line Before Current                                | "run_macro_file", "args": {"file": "res://Packages/Default/Add Line Before.sublime-macro"} |
|     Edit | Insert Line Below | <kbd>Pinky+Thumb+N</kbd>       |                                      |         | Start New Line                                               | "run_macro_file", "args": {"file": "res://Packages/Default/Add Line.sublime-macro"}        |
|     Edit | Insert Child      | <kbd>Pinky+Thumb+M</kbd>       |                                      |         | Start New Line                                               | "run_macro_file", "args": {"file": "res://Packages/Default/Add Line.sublime-macro"}        |
|     Edit | Delete Line       | <kbd>Pinky+Thumb+.</kbd>       |                                      |         | Delete Line                                                  | "run_macro_file", "args": {"file": "res://Packages/Default/Delete Line.sublime-macro"}     |
| -------: | ---------------   | ------------------------------ | ------------------------------------ | ------- | ------------------------------------------------------------ | -----------------------------------------------------------                                |
 |   Select | All               | <kbd>Pinky+a</kbd>             |                                      |         |                                                              |                                                                                            |
|   Select | Expand            | <kbd></kbd>                    |                                      |         |                                                              |                                                                                            |
|   Select | Contract          | <kbd></kbd>                    |                                      |         |                                                              |                                                                                            |
|   Select | Word Occurs       | <kbd>Pinky+Shift+a</kbd>       |                                      |         |                                                              |                                                                                            |
|   Select | Next Word         | <kbd>Pinky+Shift+s</kbd>       |                                      |         |                                                              |                                                                                            |
|   Select | Prev Word         | <kbd>Pinky+Shift+w</kbd>       |                                      |         |                                                              |                                                                                            |

               




### Editing (Outline-Oriented)

| Group | Cmd        | Key                          | Select | Notes | Jetbrains Name             | SublimeText |
|------:|------------|------------------------------|--------|-------|----------------------------|-------------|


### Move Cursor By Character

|  Group | Cmd           | Key                      | Select                         | Notes               | Jetbrains Name              | PC-Defaults                              |
|-------:|---------------|--------------------------|--------------------------------|---------------------|-----------------------------|------------------------------------------|
|      > | ------------- | --------------------     |                                | ------------------- | ---                         | ---------------------------------------- |
| Cursor | Up            | <kbd>Hyper+i</kbd>       | <kbd>Hyper+Shift+i</kbd>       |                     | Up                          | <kbd>Up</kbd>                            |
| Cursor | Down          | <kbd>Hyper+k</kbd>       | <kbd>Hyper+Shift+k</kbd>       |                     | Down                        | <kbd>Down</kbd>                          |
| Cursor | Left          | <kbd>Hyper+j</kbd>       | <kbd>Hyper+Shift+j</kbd>       |                     | Left                        | <kbd>Left</kbd>                          |
| Cursor | Right         | <kbd>Hyper+l</kbd>       | <kbd>Hyper+Shift+l</kbd>       |                     | Right                       | <kbd>Right</kbd>                         |
| Cursor | Line Beg      | <kbd>Hyper+u</kbd>       | <kbd>Hyper+Shift+u</kbd>       | Beginning of line   | Move Caret to Line Start    | <kbd>Home</kbd>                          |
| Cursor | Line End      | <kbd>Hyper+o</kbd>       | <kbd>Hyper+Shift+o</kbd>       | End of line         | Move Caret to Line End      | <kbd>End</kbd>                           |
| Cursor | Page Up       | <kbd>Hyper+y</kbd>       | <kbd>Hyper+Shift+y</kbd>       |                     | Page Up                     | <kbd>PgUp</kbd>                          |
| Cursor | Page Dn       | <kbd>Hyper+h</kbd>       | <kbd>Hyper+Shift+h</kbd>       |                     | Page Down                   | <kbd>PgDn</kbd>                          |
| Cursor | Doc Beg       | <kbd>Hyper+t</kbd>       | <kbd>Hyper+Shift+t</kbd>       | Top                 | Move Caret to Text Start    |                                          |
| Cursor | Doc End       | <kbd>Hyper+b</kbd>       | <kbd>Hyper+Shift+b</kbd>       | Bottom              | Move Caret to Text End      |                                          |
| Scroll | Up            | <kbd>Hyper+w</kbd>       | <kbd>Hyper+Shift+w</kbd>       |                     | Scroll Up                   |                                          |
| Scroll | Down          | <kbd>Hyper+s</kbd>       | <kbd>Hyper+Shift+s</kbd>       |                     | Scroll Down                 |                                          |
| Scroll | Left          | <kbd>Hyper+a</kbd>       | <kbd>Hyper+Shift+a</kbd>       |                     | Scroll Left                 |                                          |
| Scroll | Right         | <kbd>Hyper+d</kbd>       | <kbd>Hyper+Shift+d</kbd>       |                     | Scroll Right                |                                          |
|        | ------------- | --------------------     |                                | ------------------- |                             | ---------------------------------------- |
| Cursor | Word Left     | <kbd>Pinky+j</kbd>       | <kbd>Pinky+Shift+j</kbd>       |                     | Move Caret to Previous Word |                                          |
| Cursor | Word Right    | <kbd>Pinky+l</kbd>       | <kbd>Pinky+Shift+l</kbd>       |                     | Move Caret to Next Word     |                                          |
| Cursor | Subword Left  | <kbd>Thumb+j</kbd>       | <kbd>Thumb+Shift+j</kbd>       |                     |                             |                                          |
| Cursor | Subword Right | <kbd>Thumb+l</kbd>       | <kbd>Thumb+Shift+l</kbd>       |                     |                             |                                          |
| Cursor | Line Left     | <kbd>Pinky+Thumb+j</kbd> | <kbd>Pinky+Thumb+Shift+j</kbd> |                     |                             |                                          |
| Cursor | Line Right    | <kbd>Pinky+Thumb+l</kbd> | <kbd>Pinky+Thumb+Shift+l</kbd> |                     |                             |                                          |
|        | ------------- | --------------------     |                                | ------------------- |                             | ---------------------------------------- |

### Move Cursor By Character

| Group | Cmd | Key | Select | Notes | Jetbrains Name | PC |
| --- | ------------- | -------------------- |------------------- | ---------------------------------------- |
| Cursor | Line Beg (H)  | <kbd>Pinky+Thumb+u</kbd>     | | Beginning of line | | <kbd>meta+ctrl+alt+u</kbd>, <kbd>
home</kbd>  |
| | ------------- | -------------------- | | ------------------- | | ---------------------------------------- |
| Select | Line Beg 2 | <kbd>Thumb+Shift+u</kbd>     | | | Move Caret to Line Start with Selection | <kbd>
ctrl+alt+u</kbd>, <kbd>home</kbd>       |
| Select | Line End 2 | <kbd>Thumb+Shift+o</kbd>     | | | Move Caret to Line End with Selection | <kbd>ctrl+alt+o</kbd>

, <kbd>end</kbd>        |

| | ------------- | -------------------- | | ------------------- | | ---------------------------------------- |
| Group | Cmd | Key | Select | Notes | Jetbrains Name | PC |
| Scroll | Up | <kbd>Thumb+i</kbd>           | | | | <kbd></kbd>                                  |
| Scroll | Down | <kbd>Thumb+k</kbd>           | | | | <kbd></kbd>                                  |
| | ------------- | -------------------- | | ------------------- | | ---------------------------------------- |
| Clone Caret | Above | <kbd>Thumb+Shift+j</kbd>     | | | | <kbd></kbd>                                  |
| Clone Caret | Below | <kbd>Thumb+Shift+j</kbd>     | | | | <kbd></kbd>                                  |
| Clone Caret | Split Lines | <kbd>Thumb+Shift+\</kbd>     | | | | <kbd></kbd>                                  |
| | ------------- | -------------------- | | ------------------- | | ---------------------------------------- |
| Rename | Duplicate | <kbd>Pinky+D</kbd>           | | | | <kbd></kbd>                                  |
| New Line | Duplicate | <kbd>Pinky+D</kbd>           | | | | <kbd></kbd>                                  |
| New Line | Above | <kbd>Pinky+Shift+I</kbd>     | | | | <kbd></kbd>                                  |
| New Line | Below | <kbd>Pinky+Shift+N</kbd>     | | | | <kbd></kbd>                                  |
| New Line | Child | <kbd>Pinky+Shift+M</kbd>     | | | | <kbd></kbd>                                  |
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
