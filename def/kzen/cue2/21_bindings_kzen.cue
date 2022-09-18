package cue2

Commands: {
	// cursor moves
	"CursorMoveToLineBackward": {
		Bindings: [
			"up",
			"hyper+i",
		]
	}
	"CursorMoveToLineForward": {
		Bindings: [
			"down",
			"hyper+k",
		]
	}
	"CursorMoveToCharBackward": {
		Bindings: [
			"left",
			"hyper+j",
		]
	}
	"CursorMoveToCharForward": {
		Bindings: [
			"right",
			"hyper+l",
		]
	}
	"CursorMoveToPageBackward": {
		Bindings: [
			"pgup",
			"hyper+y",
		]
	}
	"CursorMoveToPageForward": {
		Bindings: [
			"pgdn",
			"hyper+h",
		]
	}

	"CursorMoveToLineBegin": {
		Bindings: [
			"home",
			"hyper+u",
			"pinky+thumb+left",
		]
	}
	"CursorMoveToLineEnd": {
		Bindings: [
			"home",
			"hyper+o",
			"pinky+thumb+right",
		]
	}

	"CursorMoveToTextBegin": {
		Bindings: [
			"home",
			"hyper+t",
		]
	}
	"CursorMoveToTextEnd": {
		Bindings: [
			"home",
			"hyper+b",
		]
	}
	// cursor jumps
	"CursorMoveToWordBackward": {
		Bindings: [
		]
	}
	"CursorMoveToWordForward": {
		Bindings: [
		]
	}

	// cursor selections
	"CursorMoveToLineBackwardSelect": {
		Bindings: [
			"shift+up",
			"hyper+shift+i",
		]
	}
	"CursorMoveToLineForwardSelect": {
		Bindings: [
			"shift+down",
			"hyper+shift+k",
		]
	}
	"CursorMoveToCharBackwardSelect": {
		Bindings: [
			"shift+left",
			"hyper+shift+j",
		]
	}
	"CursorMoveToCharForwardSelect": {
		Bindings: [
			"shift+right",
			"hyper+shift+k",
		]
	}

	"CursorMoveToLineBeginSelect": {
		Bindings: [
			"shift+home",
			"hyper+shift+u",
		]
	}
	"CursorMoveToLineEndSelect": {
		Bindings: [
			"shift+end",
			"hyper+shift+o",
		]
	}

	"CursorMoveToTextBeginSelect": {
		Bindings: [
			"ctrl+shift+end",
			"hyper+shift+b",
		]
	}
	"CursorMoveToTextEndSelect": {
		Bindings: [
			"ctrl+shift+end",
			"hyper+shift+b",
		]
	}

}
