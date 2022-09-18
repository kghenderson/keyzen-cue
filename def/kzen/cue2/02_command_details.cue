package cue2


KZ: checkCommandsInCommandNames: {
	for cmdName, cmd in KZ.Commands {
		true & KZ.commandNamesLookup[cmdName]
	}
}

KZ: Commands: [cmdName=#CommandName]: {
	Name:      cmdName
	Category:  string
	Human: string
	...
}

KZ: Commands: {
	// cursor moves
	"CursorMoveToLineBackward": {
		Category: "Cursor"
		Human:    "Up"
	}
	"CursorMoveToLineBackwardSelect": {
		Category: "Select"
		Human:    "Up"
	}
	"CursorMoveToLineForward": {
		Category: "Cursor"
		Human:    "Down"
	}
	"CursorMoveToLineForwardSelect": {
		Category: "Select"
		Human:    "Down"
	}

	"CursorMoveToCharBackward": {
		Category: "Cursor"
		Human:    "Left"
	}
		"CursorMoveToCharBackwardSelect": {
		Category: "Select"
		Human:    "Left"
	}
	"CursorMoveToCharForward": {
		Category: "Cursor"
		Human:    "Right"
	}
	"CursorMoveToCharForwardSelect": {
		Category: "Select"
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
		"CursorMoveToLineBeginSelect": {
		Category: "Select"
		Human:    "Line Begin"
	}
	"CursorMoveToLineEnd": {
		Category: "Cursor"
		Human:    "Line End"
	}
		"CursorMoveToLineEndSelect": {
		Category: "Select"
		Human:    "Line End"
	}

	"CursorMoveToTextBegin": {
		Category: "Cursor"
		Human:    "File Begin"
	}
		"CursorMoveToTextBeginSelect": {
		Category: "Select"
		Human:    "Text Begin"
	}

	"CursorMoveToTextEnd": {
		Category: "Cursor"
		Human:    "File End"
	}
		"CursorMoveToTextEndSelect": {
		Category: "Select"
		Human:    "Text End"
	}

	// cursor jumps
	"CursorMoveToWordForward": {
		Category: "Cursor"
		Human:    "Word Right"
	}
	"CursorMoveToWordForwardSelect": {
		Category: "Cursor"
		Human:    "Word Right"
	}
	"CursorMoveToWordBackward": {
		Category: "Cursor"
		Human:    "Word Left"
	}
	"CursorMoveToWordBackwardSelect": {
		Category: "Cursor"
		Human:    "Word Left"
	}
	// cursor selections
		"CursorMoveToSubwordForward": {
		Category: "Cursor"
		Human:    "Subword Right"
	}
	"CursorMoveToSubwordForwardSelect": {
		Category: "Cursor"
		Human:    "Subword Right"
	}
	"CursorMoveToSubwordBackward": {
		Category: "Cursor"
		Human:    "Subword Left"
	}
	"CursorMoveToSubwordBackwardSelect": {
		Category: "Cursor"
		Human:    "Subword Left"
	}









	// "": {
	//	Category: "Cursor"
	//	Human:    ""
	//}
	//"": {
	//	Category: "Cursor"
	//	Human:    ""
	//}


}
