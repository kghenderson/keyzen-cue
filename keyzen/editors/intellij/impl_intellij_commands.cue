package intellij

Name: "IntelliJ"

EditorCommandNameMap: [cmdName=string]: #IntellijCommand

EditorCommandNameMap: {

	CursorMoveToLineForward: {Label: "Down", ActionId: "EditorDown"}
	CursorMoveToLineBackward: {Label: "Up", ActionId: "EditorUp"}
	CursorMoveToCharForward: {Label: "Right", ActionId: "EditorRight"}
	CursorMoveToCharBackward: {Label: "Left", ActionId: "EditorLeft"}
	CursorMoveToSubwordForward: {Label: #"Move Caret to Next Word in Different "CamelHumps" Mode"#, ActionId: "EditorNextWordInDifferentHumpsMode"}
	CursorMoveToSubwordBackward: {Label: #"Move Caret to Previous Word in Different "CamelHumps" Mode"#, ActionId: "EditorPreviousWordInDifferentHumpsMode"}
	CursorMoveToWordForward: {Label: "Move Caret to Next Word", ActionId: "EditorNextWord"}
	CursorMoveToWordBackward: {Label: "Move Caret to Previous Word", ActionId: "EditorPreviousWord"}
	CursorMoveToPageForward: {Label: "Page Down", ActionId: "EditorPageDown"}
	CursorMoveToPageBackward: {Label: "Page Up", ActionId: "EditorPageUp"}
	CursorMoveToLineEnd: {Label: "Move Caret to Line End", ActionId: "EditorLineEnd"}
	CursorMoveToLineBegin: {Label: "Move Caret to Line Start", ActionId: "EditorLineStart"}
	CursorMoveToTextEnd: {Label: "Move Caret to Text End", ActionId: "EditorTextEnd"}
	CursorMoveToTextBegin: {Label: "Move Caret to Text Start", ActionId: "EditorTextStart"}

	CursorMoveToLineForwardSelect: {_parent: CursorMoveToLineForward, Label: _parent.Label + " with Selection", ActionId: _parent.ActionId + "WithSelection"}
	CursorMoveToLineBackwardSelect: {_parent: CursorMoveToLineBackward, Label: _parent.Label + " with Selection", ActionId: _parent.ActionId + "WithSelection"}
	CursorMoveToCharForwardSelect: {_parent: CursorMoveToCharForward, Label: _parent.Label + " with Selection", ActionId: _parent.ActionId + "WithSelection"}
	CursorMoveToCharBackwardSelect: {_parent: CursorMoveToCharBackward, Label: _parent.Label + " with Selection", ActionId: _parent.ActionId + "WithSelection"}
	CursorMoveToSubwordForwardSelect: {_parent: CursorMoveToSubwordForward, Label: _parent.Label + " with Selection", ActionId: _parent.ActionId + "WithSelection"}
	CursorMoveToSubwordBackwardSelect: {_parent: CursorMoveToSubwordBackward, Label: _parent.Label + " with Selection", ActionId: _parent.ActionId + "WithSelection"}
	CursorMoveToWordForwardSelect: {_parent: CursorMoveToWordForward, Label: _parent.Label + " with Selection", ActionId: _parent.ActionId + "WithSelection"}
	CursorMoveToWordBackwardSelect: {_parent: CursorMoveToWordBackward, Label: _parent.Label + " with Selection", ActionId: _parent.ActionId + "WithSelection"}
	CursorMoveToPageForwardSelect: {_parent: CursorMoveToPageForward, Label: _parent.Label + " with Selection", ActionId: _parent.ActionId + "WithSelection"}
	CursorMoveToPageBackwardSelect: {_parent: CursorMoveToPageBackward, Label: _parent.Label + " with Selection", ActionId: _parent.ActionId + "WithSelection"}
	CursorMoveToLineEndSelect: {_parent: CursorMoveToLineEnd, Label: _parent.Label + " with Selection", ActionId: _parent.ActionId + "WithSelection"}
	CursorMoveToLineBeginSelect: {_parent: CursorMoveToLineBegin, Label: _parent.Label + " with Selection", ActionId: _parent.ActionId + "WithSelection"}
	CursorMoveToTextEndSelect: {_parent: CursorMoveToTextEnd, Label: _parent.Label + " with Selection", ActionId: _parent.ActionId + "WithSelection"}
	CursorMoveToTextBeginSelect: {_parent: CursorMoveToTextBegin, Label: _parent.Label + " with Selection", ActionId: _parent.ActionId + "WithSelection"}

	CursorMultiCloneAbove: {Label: "Clone Caret Above", ActionId: "EditorCloneCaretAbove"}
	CursorMultiCloneBelow: {Label: "Clone Caret Below", ActionId: "EditorCloneCaretBelow"}
	CursorMultiCloneOnLineEnds: {Label: "Add Carets to Ends of Selected Lines", ActionId: "EditorAddCaretPerSelectedLine"}
	CursorSelectAll: {Label: "Select All", ActionId: "$SelectAll"}
	CursorSelectionContract: {Label: "Shrink Selection", ActionId: "EditorUnSelectWord"}
	CursorSelectionExpand: {Label: "Extend Selection", ActionId: "EditorSelectWord"}

	EditNodeMoveUp: {Label: "Move Line Up", ActionId: "MoveLineUp"}
	EditNodeMoveDown: {Label: "Move Line Down", ActionId: "MoveLineDown"}
	EditNodeMoveIn: {Label: "Move Line Right", ActionId: "EditorIndentLineOrSelection"}
	EditNodeMoveOut: {Label: "Move Line Left", ActionId: "EditorUnindentSelection"}
	EditNodeRename: {Label: "Rename...", ActionId: "RenameElement"}
	EditNodeDelete: {Label: "Delete Line", ActionId: "EditorDeleteLine"}

	EditNodeInsertAboveParent: {Label: "Start New Line Before Current", ActionId: "EditorStartNewLineBefore"}
	EditNodeInsertAboveSibling: {Label: "Start New Line Before Current", ActionId: "EditorStartNewLineBefore"}
	EditNodeInsertBelowChild: {Label: "Start New Line", ActionId: "EditorStartNewLine"}
	EditNodeInsertBelowSibling: {Label: "Start New Line", ActionId: "EditorStartNewLine"}
	EditNodeInsertDuplicate: {Label: "Duplicate Entire Lines", ActionId: "EditorDuplicateLines"}
	EditNodeJoin: {Label: "Join Line", ActionId: "EditorJoinLines"}
	EditNodeSplit: {Label: "Split Line", ActionId: "EditorSplitLine"}

	GotoEditorSettings: {Label: "Settings...", ActionId: "ShowSettings"}

}
