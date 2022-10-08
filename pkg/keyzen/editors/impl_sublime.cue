package editors

import (
	"encoding/json"
)

Editors: "\(thisEditor.Name)": thisEditor


let thisEditor = #Editor & {
	Name: "SublimeText"

	EditorCommandNameMap: [cmdName=string]: #SublimeCommand

	EditorCommandNameMap: {

		CursorMoveToLineForward:    #SublimeMoveCmd & {args: by: "lines"}
		CursorMoveToCharForward:    #SublimeMoveCmd & {args: by: "characters"}
		CursorMoveToSubwordForward: #SublimeMoveCmd & {args: by: "subwords"}
		CursorMoveToWordForward:    #SublimeMoveCmd & {args: by: "words"}
		CursorMoveToPageForward:    #SublimeMoveCmd & {args: by: "pages"}

		CursorMoveToLineBackward:    CursorMoveToLineForward & {args: forward:    false}
		CursorMoveToCharBackward:    CursorMoveToCharForward & {args: forward:    false}
		CursorMoveToSubwordBackward: CursorMoveToSubwordForward & {args: forward: false}
		CursorMoveToWordBackward:    CursorMoveToWordForward & {args: forward:    false}
		CursorMoveToPageBackward:    CursorMoveToPageForward & {args: forward:    false}

		CursorMoveToLineBegin: #SublimeMoveToCmd & {args: {to: "bol"}}
		CursorMoveToLineEnd:   #SublimeMoveToCmd & {args: {to: "eol"}}
		CursorMoveToTextEnd:   #SublimeMoveToCmd & {args: {to: "eof"}}
		CursorMoveToTextBegin: #SublimeMoveToCmd & {args: {to: "bof"}}

		CursorMoveToLineForwardSelect:     CursorMoveToLineForward & {args: extend:     true}
		CursorMoveToLineBackwardSelect:    CursorMoveToLineBackward & {args: extend:    true}
		CursorMoveToCharForwardSelect:     CursorMoveToCharForward & {args: extend:     true}
		CursorMoveToCharBackwardSelect:    CursorMoveToCharBackward & {args: extend:    true}
		CursorMoveToSubwordForwardSelect:  CursorMoveToSubwordForward & {args: extend:  true}
		CursorMoveToSubwordBackwardSelect: CursorMoveToSubwordBackward & {args: extend: true}
		CursorMoveToWordForwardSelect:     CursorMoveToWordForward & {args: extend:     true}
		CursorMoveToWordBackwardSelect:    CursorMoveToWordBackward & {args: extend:    true}
		CursorMoveToLineEndSelect:         CursorMoveToLineEnd & {args: extend:         true}
		CursorMoveToLineBeginSelect:       CursorMoveToLineBegin & {args: extend:       true}
		CursorMoveToPageForwardSelect:     CursorMoveToPageForward & {args: extend:     true}
		CursorMoveToPageBackwardSelect:    CursorMoveToPageBackward & {args: extend:    true}
		CursorMoveToTextEndSelect:         CursorMoveToTextEnd & {args: extend:         true}
		CursorMoveToTextBeginSelect:       CursorMoveToTextBegin & {args: extend:       true}

		CursorMultiCloneAbove: {command: "select_lines", args: {forward: false}}
		CursorMultiCloneBelow: {command: "select_lines", args: {forward: true}}
		CursorMultiCloneOnLineEnds: {command: "split_selection_into_lines"}

		CursorSelectAll: {command: "select_all"}

		EditNodeDelete: {command: "run_macro_file", args: {file: "res://Packages/Default/Delete Line.sublime-macro"}}
		EditNodeInsertAboveParent: {command: "run_macro_file", args: {file: "res://Packages/Default/Add Line Before.sublime-macro"}}
		EditNodeInsertAboveSibling: {command: "run_macro_file", args: {file: "res://Packages/Default/Add Line Before.sublime-macro"}}
		EditNodeInsertBelowChild: {command: "run_macro_file", args: {file: "res://Packages/Default/Add Line.sublime-macro"}}
		EditNodeInsertBelowSibling: {command: "run_macro_file", args: {file: "res://Packages/Default/Add Line.sublime-macro"}}
		EditNodeInsertDuplicate: {command: "duplicate_line"}
		EditNodeJoin: {command: "join_lines"}
		EditNodeMoveDown: {command: "swap_line_down"}
		EditNodeMoveIn: {command: "indent"}
		EditNodeMoveOut: {command: "unindent"}
		EditNodeMoveUp: {command: "swap_line_up"}
		EditNodeSplit: {command: "insert", args: {"characters": "\n"}}
	}
}

#SublimeCommand: {
	command: string

	args?: {...}
	argsText?: string
	if args != _|_ {argsText: json.Marshal(args)}

}

#SublimeMoveCmd: #SublimeCommand & {
	command: "move"
	args: {
		by:      "characters" | "lines" | "pages" | "subwords" | "words"
		forward: bool | *true
		extend:  bool | *false
	}
}
#SublimeMoveToCmd: #SublimeCommand & {
	command: "move_to"
	args: {
		to:     "bof" | "bol" | "eof" | "eol"
		extend: bool | *false
	}
}
