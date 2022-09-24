package cue2

Commands: {
	// cursor moves
	"CursorMoveLineBackward": {
		Category:         "Cursor"
		Human:            "Up"
		JetbrainsCommand: "Up"
		//language=json
		SublimeTextCommand: #"{"command": "move_to", "args": {"by": "lines", "forward": false, "extend": false}}"#
		Bindings: [
			"up",
			"hyper+i",
		]
	}
	"CursorMoveLineForward": {
		Category:         "Cursor"
		Human:            "Down"
		JetbrainsCommand: "Down"
		//language=json
		SublimeTextCommand: #"{"command": "move_to", "args": {"by": "lines", "forward": true, "extend": false}}"#
		Bindings: [
			"down",
			"hyper+k",
		]
	}
	"CursorMoveCharBackward": {
		Category:         "Cursor"
		Human:            "Left"
		JetbrainsCommand: "Left"
		//language=json
		SublimeTextCommand: #"{"command": "move_to", "args": {"by": "characters", "forward": false, "extend": false}}"#
		Bindings: [
			"left",
			"hyper+j",
		]
	}
	"CursorMoveCharForward": {
		Name:
			Category: "Cursor"
		Human:            "Right"
		JetbrainsCommand: "Right"
		//language=json
		SublimeTextCommand: #"{"command": "move_to", "args": {"by": "characters", "forward": true, "extend": false}}"#
		Bindings: [
			"right",
			"hyper+l",
		]
	}
	"CursorMovePageBackward": {
		Category:         "Cursor"
		Human:            "Page Up"
		JetbrainsCommand: "Page Up"
		//language=json
		SublimeTextCommand: #"{"command": "move_to", "args": {"by": "pages", "forward": false, "extend": false}}"#
		Bindings: [
			"pgup",
			"hyper+y",
		]
	}
	"CursorMovePageForward": {
		Category:         "Cursor"
		Human:            "Page Down"
		JetbrainsCommand: "Page Down"
		//language=json
		SublimeTextCommand: #"{"command": "move_to", "args": {"by": "pages", "forward": true, "extend": false}}"#
		Bindings: [
			"pgdn",
			"hyper+h",
		]
	}

	"CursorMoveLineBegin": {
		Category:         "Cursor"
		Human:            "Line Begin"
		JetbrainsCommand: "Move Caret to Line Start"
		//language=json
		SublimeTextCommand: #"{"command": "move_to", "args": {"to": "bol", "extend": false}}"#
		Bindings: [
			"home",
			"hyper+u",
			"pinky+thumb+left",
		]
	}
	"CursorMoveLineEnd": {
		Name:
			Category: "Cursor"
		Human:            "Line End"
		JetbrainsCommand: "Move Caret to Line End"
		//language=json
		SublimeTextCommand: #"{"command": "move_to", "args": {"to": "eol", "extend": false}}"#
		Bindings: [
			"home",
			"hyper+o",
			"pinky+thumb+right",
		]
	}

	"CursorMoveTextBegin": {
		Name:
			Category: "Cursor"
		Human:            "File Begin"
		JetbrainsCommand: "Move Caret to Text Start"
		//language=json
		SublimeTextCommand: #"{"command": "move_to", "args": {"to": "bof", "extend": false}}"#
		Bindings: [
			"home",
			"hyper+t",
		]
	}
	"CursorMoveTextEnd": {
		Category:         "Cursor"
		Human:            "File End"
		JetbrainsCommand: "Move Caret to Text End"
		//language=json
		SublimeTextCommand: #"{"command": "move_to", "args": {"to": "eof", "extend": false}}"#
		Bindings: [
			"home",
			"hyper+b",
		]
	}
	// cursor jumps
	{
		Category:         "Cursor"
		Human:            "Word Left"
		JetbrainsCommand: "Move Caret to Previous Word"
		//language=json
		SublimeTextCommand: #"{"command": "move_to", "args": {"by": "words", "forward": false}}"#
		Bindings: [
		]
	}
	"CursorMoveWordForward": {
		Category:         "Cursor"
		Human:            "Word Right"
		JetbrainsCommand: "Move Caret to Next Word"
		//language=json
		SublimeTextCommand: #"{"command": "move_to", "args": {"by": "words", "forward": true}}"#
		Bindings: [
		]
	}
	"": {
		Category:         "Cursor"
		Human:            ""
		JetbrainsCommand: ""
		//language=json
		SublimeTextCommand: #""#
		Bindings: [
		]
	}
	"": {
		Category:         "Cursor"
		Human:            ""
		JetbrainsCommand: ""
		//language=json
		SublimeTextCommand: #""#
		Bindings: [
		]
	}

	// cursor selections
	"CursorSelectLineBackward": {
		Category:         "Select"
		Human:            "Up"
		JetbrainsCommand: "Up with Selection"
		//language=json
		SublimeTextCommand: #"{"command": "move_to", "args": {"by": "lines", "forward": false, "extend": true}}"#
		Bindings: [
			"shift+up",
			"hyper+shift+i",
		]
	}
	"CursorSelectLineForward": {
		Category:         "Select"
		Human:            "Down"
		JetbrainsCommand: "Down with Selection"
		//language=json
		SublimeTextCommand: #"{"command": "move_to", "args": {"by": "lines", "forward": true, "extend": true}}"#
		Bindings: [
			"shift+down",
			"hyper+shift+k",
		]
	}
	"CursorSelectCharBackward": {
		Category:         "Select"
		Human:            "Left"
		JetbrainsCommand: "Left with Selection"
		//language=json
		SublimeTextCommand: #"{"command": "move_to", "args": {"by": "characters", "forward": false, "extend": true}}"#
		Bindings: [
			"shift+left",
			"hyper+shift+j",
		]
	}
	"CursorSelectCharForward": {
		Category:         "Select"
		Human:            "Right"
		JetbrainsCommand: "Right with Selection"
		//language=json
		SublimeTextCommand: #"{"command": "move_to", "args": {"by": "characters", "forward": true, "extend": true}}"#
		Bindings: [
			"shift+right",
			"hyper+shift+k",
		]
	}

	"CursorSelectLineBegin": {
		Name:
			Category: "Select"
		Human:            "Line Begin"
		JetbrainsCommand: "Move Caret to Line Start with Selection"
		//language=json
		SublimeTextCommand: #"{"command": "move_to", "args": {"to": "bol", "extend": true}}"#
		Bindings: [
			"shift+home",
			"hyper+shift+u",
		]
	}
	"CursorSelectLineEnd": {
		Name:
			Category: "Select"
		Human:            "Line End"
		JetbrainsCommand: "Move Caret to Line End with Selection"
		//language=json
		SublimeTextCommand: #"{"command": "move_to", "args": {"to": "eol", "extend": true}}"#
		Bindings: [
			"shift+end",
			"hyper+shift+o",
		]
	}

	"CursorSelectTextBegin": {
		Category:         "Select"
		Human:            "Text Begin"
		JetbrainsCommand: "Move Caret to Text Begin with Selection"
		//language=json
		SublimeTextCommand: #"{"command": "move_to", "args": {"to": "bof", "extend": true}}"#
		Bindings: [
			"ctrl+shift+end",
			"hyper+shift+b",
		]
	}
	"CursorSelectTextEnd": {
		Category:         "Select"
		Human:            "Text End"
		JetbrainsCommand: "Move Caret to Text End with Selection"
		//language=json
		SublimeTextCommand: #"{"command": "move_to", "args": {"to": "eof", "extend": true}}"#
		Bindings: [
			"ctrl+shift+end",
			"hyper+shift+b",
		]
	}

}
