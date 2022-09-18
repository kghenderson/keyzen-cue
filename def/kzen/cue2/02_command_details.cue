package cue2


checkCommandsInCommandNames: {
	for cmdName, cmd in Commands {
		true & commandNamesLookup[cmdName]
	}
}

Commands: {
	// cursor moves
	"CursorMoveToLineBackward": {
		Category: "Cursor"
		Human:    "Up"
	}


	"CursorMoveToLineForward": {
		Category: "Cursor"
		Human:    "Down"
	}
	"CursorMoveToCharBackward": {
		Category: "Cursor"
		Human:    "Left"
	}
	"CursorMoveToCharForward": {
		Category: "Cursor"
		Human:    "Right"
	}
	"CursorMoveToPageBackward": {
		Category: "Cursor"
		Human:    "Page Up"
	}
	"CursorMoveToPageForward": {
		Category: "Cursor"
		Human:    "Page Down"
	}

	"CursorMoveToLineBegin": {
		Category: "Cursor"
		Human:    "Line Begin"
	}
	"CursorMoveToLineEnd": {
		Category: "Cursor"
		Human:    "Line End"
	}

	"CursorMoveToTextBegin": {
		Category: "Cursor"
		Human:    "File Begin"
	}
	"CursorMoveToTextEnd": {
		Category: "Cursor"
		Human:    "File End"
	}
	// cursor jumps
	"CursorMoveToWordBackward": {
		Category: "Cursor"
		Human:    "Word Left"
	}
	"CursorMoveToWordForward": {
		Category: "Cursor"
		Human:    "Word Right"
	}
	// "": {
	//	Category: "Cursor"
	//	Human:    ""
	//}
	//"": {
	//	Category: "Cursor"
	//	Human:    ""
	//}

	// cursor selections
	"CursorMoveToLineBackwardSelect": {
		Category: "Select"
		Human:    "Up"
	}
	"CursorMoveToLineForwardSelect": {
		Category: "Select"
		Human:    "Down"
	}
	"CursorMoveToCharBackwardSelect": {
		Category: "Select"
		Human:    "Left"
	}
	"CursorMoveToCharForwardSelect": {
		Category: "Select"
		Human:    "Right"
	}

	"CursorMoveToLineBeginSelect": {
		Category: "Select"
		Human:    "Line Begin"
	}
	"CursorMoveToLineEndSelect": {
		Category: "Select"
		Human:    "Line End"
	}

	"CursorMoveToTextBeginSelect": {
		Category: "Select"
		Human:    "Text Begin"
	}
	"CursorMoveToTextEndSelect": {
		Category: "Select"
		Human:    "Text End"
	}

}
