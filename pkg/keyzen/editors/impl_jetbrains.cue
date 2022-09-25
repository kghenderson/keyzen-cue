package editors

Editors: "\(thisEditor.Name)": thisEditor

let thisEditor = #Editor & {
	Name: "Jetbrains"

	EditorCommandNameMap: {
		"CursorMoveToCharBackward": {"Label": "Left"}
		"CursorMoveToCharBackwardSelect": {"Label": "Left with Selection"}
		"CursorMoveToCharForward": {"Label": "Right"}
		"CursorMoveToCharForwardSelect": {"Label": "Right with Selection"}
		"CursorMoveToLineBackward": {"Label": "Up"}
		"CursorMoveToLineBackwardSelect": {"Label": "Up with Selection"}
		"CursorMoveToLineBegin": {"Label": "Move Caret to Line Start"}
		"CursorMoveToLineBeginSelect": {"Label": "Move Caret to Line Start with Selection"}
		"CursorMoveToLineEnd": {"Label": "Move Caret to Line End"}
		"CursorMoveToLineEndSelect": {"Label": "Move Caret to Line End with Selection"}
		"CursorMoveToLineForward": {"Label": "Down"}
		"CursorMoveToLineForwardSelect": {"Label": "Down with Selection"}
		"CursorMoveToPageBackward": {"Label": "Page Up"}
		"CursorMoveToPageBackwardSelect": {"Label": "Page Up with Selection"}
		"CursorMoveToPageForward": {"Label": "Page Down"}
		"CursorMoveToPageForwardSelect": {"Label": "Page Down with Selection"}
		"CursorMoveToSubwordBackward": {"Label": #"Move Caret to Previous Word in Different "CamelHumps" Mode"#}
		"CursorMoveToSubwordBackwardSelect": {"Label": #"Move Caret to Previous Word in Different "CamelHumps" Mode with Selection"#}
		"CursorMoveToSubwordForward": {"Label": #"Move Caret to Next Word in Different "CamelHumps" Mode"#}
		"CursorMoveToSubwordForwardSelect": {"Label": #"Move Caret to Next Word in Different "CamelHumps" Mode with Selection"#}
		"CursorMoveToTextBegin": {"Label": "Move Caret to Text Start"}
		"CursorMoveToTextBeginSelect": {"Label": "Move Caret to Text Begin with Selection"}
		"CursorMoveToTextEnd": {"Label": "Move Caret to Text End"}
		"CursorMoveToTextEndSelect": {"Label": "Move Caret to Text End with Selection"}
		"CursorMoveToWordBackward": {"Label": "Move Caret to Previous Word"}
		"CursorMoveToWordBackwardSelect": {"Label": "Move Caret to Previous Word with Selection"}
		"CursorMoveToWordForward": {"Label": "Move Caret to Next Word"}
		"CursorMoveToWordForwardSelect": {"Label": "Move Caret to Next Word with Selection"}
		"CursorMultiCloneAbove": {"Label": "Clone Caret Above"}
		"CursorMultiCloneBelow": {"Label": "Clone Caret Below"}
		"CursorMultiCloneOnLineEnds": {"Label": "Add Carets to Ends of Selected Lines"}
		"CursorSelectAll": {"Label": "Select All"}
		"CursorSelectionContract": {"Label": "Shrink Selection"}
		"CursorSelectionExpand": {"Label": "Extend Selection"}
		"EditNodeDelete": {"Label": "Delete Line"}
		"EditNodeInsertAboveParent": {"Label": "Start New Line Before Current"}
		"EditNodeInsertAboveSibling": {"Label": "Start New Line Before Current"}
		"EditNodeInsertBelowChild": {"Label": "Start New Line"}
		"EditNodeInsertBelowSibling": {"Label": "Start New Line"}
		"EditNodeInsertDuplicate": {"Label": "Duplicate Entire Lines"}
		"EditNodeJoin": {"Label": "Join Line"}
		"EditNodeMoveDown": {"Label": "Move Line Down"}
		"EditNodeMoveIn": {"Label": "Move Line Right"}
		"EditNodeMoveOut": {"Label": "Move Line Left"}
		"EditNodeMoveUp": {"Label": "Move Line Up"}
		"EditNodeRename": {"Label": "Rename..."}
		"EditNodeSplit": {"Label": "Split Line"}
	}
}

// "":        #"{}"#
