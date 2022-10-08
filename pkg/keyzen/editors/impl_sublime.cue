package editors

import (
	"encoding/json"
)

Editors: "\(thisEditor.Name)": thisEditor

#SublStuff: {
	command: string

	args?: {...}
	argsText?: string
	if args != _|_ {argsText: json.Marshal(args)}

}

let thisEditor = #Editor & {
	Name: "SublimeText"

	EditorCommandNameMap: [cmdName=string]: #SublStuff

	EditorCommandNameMap: {

		CursorMoveToLineForward: {command: "move", args: {by: "lines", forward: true}}
		CursorMoveToLineBackward: {command: "move", args: {by: "lines", forward: false}}
		CursorMoveToCharForward: {command: "move", args: {by: "characters", forward: true}}
		CursorMoveToCharBackward: {command: "move", args: {by: "characters", forward: false}}
		CursorMoveToSubwordForward: {command: "move", args: {by: "subwords", forward: true}}
		CursorMoveToSubwordBackward: {command: "move", args: {by: "subwords", forward: false}}
		CursorMoveToWordForward: {command: "move", args: {by: "words", forward: true}}
		CursorMoveToWordBackward: {command: "move", args: {by: "words", forward: false}}
		CursorMoveToLineBegin: {command: "move_to", args: {to: "bol"}}
		CursorMoveToLineEnd: {command: "move_to", args: {to: "eol"}}
		CursorMoveToPageForward: {command: "move", args: {by: "pages", forward: true}}
		CursorMoveToPageBackward: {command: "move", args: {by: "pages", forward: false}}
		CursorMoveToTextEnd: {command: "move_to", args: {to: "eof"}}
		CursorMoveToTextBegin: {command: "move_to", args: {to: "bof"}}

		CursorMoveToLineForwardSelect: {"command": "move", "args": {"by": "lines", "forward": true, "extend": true}}
		CursorMoveToLineBackwardSelect: {"command": "move", "args": {"by": "lines", "forward": false, "extend": true}}
		CursorMoveToCharForwardSelect: {"command": "move", "args": {"by": "characters", "forward": true, "extend": true}}
		CursorMoveToCharBackwardSelect: {"command": "move", "args": {"by": "characters", "forward": false, "extend": true}}
		CursorMoveToSubwordForwardSelect: {"command": "move", "args": {"by": "subwords", "forward": true, "extend": true}}
		CursorMoveToSubwordBackwardSelect: {"command": "move", "args": {"by": "subwords", "forward": false, "extend": true}}
		CursorMoveToWordForwardSelect: {"command": "move", "args": {"by": "words", "forward": true, "extend": true}}
		CursorMoveToWordBackwardSelect: {"command": "move", "args": {"by": "words", "forward": false, "extend": true}}
		CursorMoveToLineEndSelect: {"command": "move_to", "args": {"to": "eol", "extend": true}}
		CursorMoveToLineBeginSelect: {"command": "move_to", "args": {"to": "bol", "extend": true}}
		CursorMoveToPageForwardSelect: {"command": "move", "args": {"by": "pages", "forward": true, "extend": true}}
		CursorMoveToPageBackwardSelect: {"command": "move", "args": {"by": "pages", "forward": false, "extend": true}}
		CursorMoveToTextEndSelect: {"command": "move_to", "args": {"to": "eof", "extend": true}}
		CursorMoveToTextBeginSelect: {"command": "move_to", "args": {"to": "bof", "extend": true}}

		CursorMultiCloneAbove: {command: "select_lines", args: {forward: false}}
		CursorMultiCloneBelow: {command: "select_lines", args: {forward: true}}
		CursorMultiCloneOnLineEnds: {command: "split_selection_into_lines"}

		CursorSelectAll: {command: "select_all"}

		EditNodeDelete: {command: "run_macro_file", args: {file: "res://Packages/Default/Delete Line.sublime-macro"}}
		EditNodeInsertAboveParent: {command: "run_macro_file", args: {"file": "res://Packages/Default/Add Line Before.sublime-macro"}}
		EditNodeInsertAboveSibling: {command: "run_macro_file", args: {"file": "res://Packages/Default/Add Line Before.sublime-macro"}}
		EditNodeInsertBelowChild: {command: "run_macro_file", args: {"file": "res://Packages/Default/Add Line.sublime-macro"}}
		EditNodeInsertBelowSibling: {command: "run_macro_file", args: {"file": "res://Packages/Default/Add Line.sublime-macro"}}
		EditNodeInsertDuplicate: {command: "duplicate_line"}
		EditNodeJoin: {command: "join_lines"}
		EditNodeMoveDown: {command: "swap_line_down"}
		EditNodeMoveIn: {command: "indent"}
		EditNodeMoveOut: {command: "unindent"}
		EditNodeMoveUp: {command: "swap_line_up"}
		EditNodeSplit: {command: "insert", args: {"characters": "\n"}}
	}
}
