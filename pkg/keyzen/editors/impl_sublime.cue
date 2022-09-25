package editors

import (
	"encoding/json"
)

Editors: "\(thisEditor.Name)": thisEditor

#SublStuff: {
	command: string
	args: {...}
	argsText: json.Marshal(args)
}

let thisEditor = #Editor & {
	Name: "SublimeText"

	EditorCommandNameMap: [cmdName=string]: #SublStuff

	EditorCommandNameMap: {
		"CursorMoveToCharBackward": {"command": "move_to", "args": {"by": "characters", "forward": false, "extend": false}}
		"CursorMoveToCharBackwardSelect": {"command": "move_to", "args": {"by": "characters", "forward": false, "extend": true}}
		"CursorMoveToCharForward": {"command": "move_to", "args": {"by": "characters", "forward": true, "extend": false}}
		"CursorMoveToCharForwardSelect": {"command": "move_to", "args": {"by": "characters", "forward": true, "extend": true}}
		"CursorMoveToLineBackward": {"command": "move_to", "args": {"by": "lines", "forward": false, "extend": false}}
		"CursorMoveToLineBackwardSelect": {"command": "move_to", "args": {"by": "lines", "forward": false, "extend": true}}
		"CursorMoveToLineBegin": {"command": "move_to", "args": {"to": "bol", "extend": false}}
		"CursorMoveToLineBeginSelect": {"command": "move_to", "args": {"to": "bol", "extend": true}}
		"CursorMoveToLineEnd": {"command": "move_to", "args": {"to": "eol", "extend": false}}
		"CursorMoveToLineEndSelect": {"command": "move_to", "args": {"to": "eol", "extend": true}}
		"CursorMoveToLineForward": {"command": "move_to", "args": {"by": "lines", "forward": true, "extend": false}}
		"CursorMoveToLineForwardSelect": {"command": "move_to", "args": {"by": "lines", "forward": true, "extend": true}}
		"CursorMoveToPageBackward": {"command": "move_to", "args": {"by": "pages", "forward": false, "extend": false}}
		"CursorMoveToPageBackwardSelect": {"command": "move_to", "args": {"by": "pages", "forward": false, "extend": true}}
		"CursorMoveToPageForward": {"command": "move_to", "args": {"by": "pages", "forward": false, "extend": false}}
		"CursorMoveToPageForwardSelect": {"command": "move_to", "args": {"by": "pages", "forward": false, "extend": true}}
		"CursorMoveToSubwordBackward": {"command": "move_to", "args": {"by": "subwords", "forward": false, "extend": false}}
		"CursorMoveToSubwordBackwardSelect": {"command": "move_to", "args": {"by": "subwords", "forward": false, "extend": true}}
		"CursorMoveToSubwordForward": {"command": "move_to", "args": {"by": "subwords", "forward": true, "extend": false}}
		"CursorMoveToSubwordForwardSelect": {"command": "move_to", "args": {"by": "subwords", "forward": true, "extend": true}}
		"CursorMoveToTextBegin": {"command": "move_to", "args": {"to": "bof", "extend": false}}
		"CursorMoveToTextBeginSelect": {"command": "move_to", "args": {"to": "bof", "extend": true}}
		"CursorMoveToTextEnd": {"command": "move_to", "args": {"to": "eof", "extend": false}}
		"CursorMoveToTextEndSelect": {"command": "move_to", "args": {"to": "eof", "extend": true}}
		"CursorMoveToWordBackward": {"command": "move_to", "args": {"by": "words", "forward": false, "extend": false}}
		"CursorMoveToWordBackwardSelect": {"command": "move_to", "args": {"by": "words", "forward": false, "extend": true}}
		"CursorMoveToWordForward": {"command": "move_to", "args": {"by": "words", "forward": true, "extend": false}}
		"CursorMoveToWordForwardSelect": {"command": "move_to", "args": {"by": "words", "forward": true, "extend": true}}
		"CursorMultiCloneAbove": {"command": "select_lines", "args": {"forward": false}}
		"CursorMultiCloneBelow": {"command": "select_lines", "args": {"forward": true}}
		"CursorMultiCloneOnLineEnds": {"command": "split_selection_into_lines"}
		"CursorSelectAll": {"command": "select_all"}
		"EditNodeDelete": {"command": "run_macro_file", "args": {"file": "res://Packages/Default/Delete Line.sublime-macro"}}
		"EditNodeInsertAboveParent": {"command": "run_macro_file", "args": {"file": "res://Packages/Default/Add Line Before.sublime-macro"}}
		"EditNodeInsertAboveSibling": {"command": "run_macro_file", "args": {"file": "res://Packages/Default/Add Line Before.sublime-macro"}}
		"EditNodeInsertBelowChild": {"command": "run_macro_file", "args": {"file": "res://Packages/Default/Add Line.sublime-macro"}}
		"EditNodeInsertBelowSibling": {"command": "run_macro_file", "args": {"file": "res://Packages/Default/Add Line.sublime-macro"}}
		"EditNodeInsertDuplicate": {"command": "duplicate_line"}
		"EditNodeJoin": {"command": "join_lines"}
		"EditNodeMoveDown": {"command": "swap_line_down"}
		"EditNodeMoveIn": {"command": "indent"}
		"EditNodeMoveOut": {"command": "unindent"}
		"EditNodeMoveUp": {"command": "swap_line_up"}
		"EditNodeSplit": {"command": "insert", "args": {"characters": "\n"}}
	}
}
