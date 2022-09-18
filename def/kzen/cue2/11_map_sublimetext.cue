package cue2

Commands: {
	// cursor moves
	"CursorMoveToLineForward": {
		//language=json
		SublimeTextCommand: #"""
			{"command": "move_to", "args": {"by": "lines", "forward": true, "extend": false}}
			"""#
	}
	"CursorMoveToLineBackward": {
		//language=json
		SublimeTextCommand: #"""
			{"command": "move_to", "args": {"by": "lines", "forward": false, "extend": false}}
			"""#
	}
	"CursorMoveToCharBackward": {
		//language=json
		SublimeTextCommand: #"""
			{"command": "move_to", "args": {"by": "characters", "forward": false, "extend": false}}
			"""#
	}
	"CursorMoveCharToForward": {
		//language=json
		SublimeTextCommand: #"""
			{"command": "move_to", "args": {"by": "characters", "forward": true, "extend": false}}
			"""#
	}
	"CursorMoveToPageBackward": {
		//language=json
		SublimeTextCommand: #"""
			{"command": "move_to", "args": {"by": "pages", "forward": false, "extend": false}}
			"""#
	}
	"CursorMoveToPageForward": {
		//language=json
		SublimeTextCommand: #"""
			{"command": "move_to", "args": {"by": "pages", "forward": true, "extend": false}}
			"""#
	}

	"CursorMoveToLineBegin": {
		//language=json
		SublimeTextCommand: #"""
			{"command": "move_to", "args": {"to": "bol", "extend": false}}
			"""#
	}
	"CursorMoveToLineEnd": {
		//language=json
		SublimeTextCommand: #"""
			{"command": "move_to", "args": {"to": "eol", "extend": false}}
			"""#
	}
	"CursorMoveToTextBegin": {
		//language=json
		SublimeTextCommand: #"""
			{"command": "move_to", "args": {"to": "bof", "extend": false}}
			"""#
	}
	"CursorMoveToTextEnd": {
		//language=json
		SublimeTextCommand: #"""
			{"command": "move_to", "args": {"to": "eof", "extend": false}}
			"""#
	}

	// cursor jumps
	"CursorMoveToWordBackward": {
		//language=json
		SublimeTextCommand: #"""
			{"command": "move_to", "args": {"by": "words", "forward": false}}
			"""#
	}
	"CursorMoveToWordForward": {
		//language=json
		SublimeTextCommand: #"""
			{"command": "move_to", "args": {"by": "words", "forward": true}}
			"""#
	}

	// cursor selections
	"CursorSelectToLineBackward": {
		//language=json
		SublimeTextCommand: #"""
			{"command": "move_to", "args": {"by": "lines", "forward": false, "extend": true}}
			"""#
	}
	"CursorSelectToLineForward": {
		//language=json
		SublimeTextCommand: #"""
			{"command": "move_to", "args": {"by": "lines", "forward": true, "extend": true}}
			"""#
	}
	"CursorSelectToCharBackward": {
		//language=json
		SublimeTextCommand: #"""
			{"command": "move_to", "args": {"by": "characters", "forward": false, "extend": true}}
			"""#
	}
	"CursorSelectToCharForward": {
		//language=json
		SublimeTextCommand: #"""
			{"command": "move_to", "args": {"by": "characters", "forward": true, "extend": true}}
			"""#
	}

	"CursorSelectToLineBegin": {
		//language=json
		SublimeTextCommand: #"""
			{"command": "move_to", "args": {"to": "bol", "extend": true}}
			"""#
	}
	"CursorSelectToLineEnd": {
		//language=json
		SublimeTextCommand: #"""
			{"command": "move_to", "args": {"to": "eol", "extend": true}}
			"""#
	}

	"CursorSelectToTextBegin": {
		//language=json
		SublimeTextCommand: #"""
			{"command": "move_to", "args": {"to": "bof", "extend": true}}
			"""#
	}
	"CursorSelectToTextEnd": {
		//language=json
		SublimeTextCommand: #"""
			{"command": "move_to", "args": {"to": "eof", "extend": true}}
			"""#
	}
}
