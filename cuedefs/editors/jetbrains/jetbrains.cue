package jetbrains

import (
	keyzen "github.com/kghenderson/keyzen/cuedefs"
)

Editor: keyzen.#Editor & {
	Name: "Jetbrains"

	CommandMap: {
		CursorMoveToLineBackward: {
			EditorCommandName: "Up"
		}
			CursorMoveToLineBackwardSelect: {
			EditorCommandName: ""
		}
		CursorMoveToLineForward: {
			EditorCommandName: ""
		}
		
		CursorMoveToLineForwardSelect: {
		EditorCommandName: "Down with Selection"
	}
	CursorMoveToCharBackward: {
		EditorCommandName: "Left"
	}
	CursorMoveToCharBackwardSelect: {
		EditorCommandName: "Left with Selection"
	}
	CursorMoveToCharForward: {
		EditorCommandName: "Right"
	}
	CursorMoveToPageBackward: {
		EditorCommandName: "Page Up"
	}
	CursorMoveToPageForward: {
		EditorCommandName: "Page Down"
	}
	CursorMoveToLineBegin: {
		EditorCommandName: "Move Caret to Line Start"
	}
	CursorMoveToLineEnd: {
		EditorCommandName: "Move Caret to Line End"
	}
	"CursorMoveToTextBegin": {
		EditorCommandName: "Move Caret to Text Start"
	}
	"CursorMoveToTextEnd": {
		EditorCommandName: "Move Caret to Text End"
	}
	"CursorMoveToWordBackward": {
		EditorCommandName: "Move Caret to Previous Word"
	}
	"CursorMoveToWordForward": {
		EditorCommandName: "Move Caret to Next Word"
	}
	"CursorMoveToSubwordBackward": {
		EditorCommandName: #"Move Caret to Previous Word in Different "CamelHumps" Mode"#
	}
	"CursorMoveToSubwordBackwardSelect": {
		EditorCommandName: #"Move Caret to Previous Word in Different "CamelHumps" Mode with Selection"#
	}
	"CursorMoveToSubwordForward": {
		EditorCommandName: #"Move Caret to Next Word in Different "CamelHumps" Mode"#
	}
	"CursorMoveToSubwordForwardSelect": {
		EditorCommandName: #"Move Caret to Next Word in Different "CamelHumps" Mode with Selection"#
	}
	"CursorMoveToCharForwardSelect": {
		EditorCommandName: "Right with Selection"
	}
	"CursorMoveToLineBeginSelect": {
		EditorCommandName: "Move Caret to Line Start with Selection"
	}
	"CursorMoveToLineEndSelect": {
		EditorCommandName: "Move Caret to Line End with Selection"
	}
	"CursorMoveToTextBeginSelect": {
		EditorCommandName: "Move Caret to Text Begin with Selection"
	}
	"CursorMoveToTextEndSelect": {
		EditorCommandName: "Move Caret to Text End with Selection"
	}

	"CursorSelectionExpand": {
		EditorCommandName: ""
	}
	"CursorSelectionContract": {
		EditorCommandName: ""
	}

	// EDIT
	"EditNodeMoveLineUp": {
		EditorCommandName: "Move Line Up"
	}
	"EditNodeMoveLineDown": {
		EditorCommandName: "Move Line Down"
	}
	"EditNodeMoveLineOut": {
		EditorCommandName: "Move Line Left"
	}
	"EditNodeMoveLineIn": {
		EditorCommandName: "Move Line Right"
	}
	"EditNodeRename": {
		EditorCommandName: ""
	}
	"EditNodeDelete": {
		EditorCommandName: ""
	}
		
		
		//x: "y"
	}
}
