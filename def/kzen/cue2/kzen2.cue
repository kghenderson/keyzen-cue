package cue2

CommandNames: [ for c in Commands {c.Name}]
#Command: {
	Name:               string
	Human:              string
	Category:           string
	JetbrainsCommand:   string
	SublimeTextCommand: string
	Bindings: [...string]
}

Commands: [
	// cursor moves
	{
		Name:               "CursorMoveLineBackward"
		Category:           "Cursor"
		Human:              "Up"
		JetbrainsCommand:   "Up"
		SublimeTextCommand: #"move_to", "args": {"by": "lines", "forward": false, "extend": false}"#
		Bindings: [
			"up",
			"hyper+i",
		]
	},
	{
		Name:               "CursorMoveLineForward"
		Category:           "Cursor"
		Human:              "Down"
		JetbrainsCommand:   "Down"
		SublimeTextCommand: #"move_to", "args": {"by": "lines", "forward": true, "extend": false}"#
		Bindings: [
			"down",
			"hyper+k",
		]
	},
	{
		Name:               "CursorMoveCharBackward"
		Category:           "Cursor"
		Human:              "Left"
		JetbrainsCommand:   "Left"
		SublimeTextCommand: #"move_to", "args": {"by": "characters", "forward": false, "extend": false}"#
		Bindings: [
			"left",
			"hyper+j",
		]
	},
	{
		Name:               "CursorMoveCharForward"
		Category:           "Cursor"
		Human:              "Right"
		JetbrainsCommand:   "Right"
		SublimeTextCommand: #"move_to", "args": {"by": "characters", "forward": true, "extend": false}"#
		Bindings: [
			"right",
			"hyper+l",
		]
	},
	{
		Name:               "CursorMovePageBackward"
		Category:           "Cursor"
		Human:              "Page Up"
		JetbrainsCommand:   "Page Up"
		SublimeTextCommand: #"move_to", "args": {"by": "pages", "forward": false, "extend": false}"#
		Bindings: [
			"pgup",
			"hyper+y",
		]
	},
	{
		Name:               "CursorMovePageForward"
		Category:           "Cursor"
		Human:              "Page Down"
		JetbrainsCommand:   "Page Down"
		SublimeTextCommand: #"move_to", "args": {"by": "pages", "forward": true, "extend": false}"#
		Bindings: [
			"pgdn",
			"hyper+h",
		]
	},

	{
		Name:               "CursorMoveLineBegin"
		Category:           "Cursor"
		Human:              "Line Begin"
		JetbrainsCommand:   "Move Caret to Line Start"
		SublimeTextCommand: #"move_to", "args": {"to": "bol", "extend": false}"#
		Bindings: [
			"home",
			"hyper+u",
			"pinky+thumb+left",
		]
	},
	{
		Name:               "CursorMoveLineEnd"
		Category:           "Cursor"
		Human:              "Line End"
		JetbrainsCommand:   "Move Caret to Line End"
		SublimeTextCommand: #"move_to", "args": {"to": "eol", "extend": false}"#
		Bindings: [
			"home",
			"hyper+o",
			"pinky+thumb+right",
		]
	},

	{
		Name:               "CursorMoveTextBegin"
		Category:           "Cursor"
		Human:              "Text Begin"
		JetbrainsCommand:   "Move Caret to Text Start"
		SublimeTextCommand: #"move_to", "args": {"to": "bof", "extend": false}"#
		Bindings: [
			"home",
			"hyper+t",
		]
	},
	{
		Name:               "CursorMoveTextEnd"
		Category:           "Cursor"
		Human:              "Text End"
		JetbrainsCommand:   "Move Caret to Text End"
		SublimeTextCommand: #"move_to", "args": {"to": "eof", "extend": false}"#
		Bindings: [
			"home",
			"hyper+b",
		]
	},

	// cursor selections
	{
		Name:               "CursorSelectLineBackward"
		Category:           "Select"
		Human:              "Up"
		JetbrainsCommand:   "Up with Selection"
		SublimeTextCommand: #"move_to", "args": {"by": "lines", "forward": false, "extend": true}"#
		Bindings: [
			"shift+up",
			"hyper+shift+i",
		]
	},
	{
		Name:               "CursorSelectLineForward"
		Category:           "Select"
		Human:              "Down"
		JetbrainsCommand:   "Down with Selection"
		SublimeTextCommand: #"move_to", "args": {"by": "lines", "forward": true, "extend": true}"#
		Bindings: [
			"shift+down",
			"hyper+shift+k",
		]
	},
	{
		Name:               "CursorSelectCharBackward"
		Category:           "Select"
		Human:              "Left"
		JetbrainsCommand:   "Left with Selection"
		SublimeTextCommand: #"move_to", "args": {"by": "characters", "forward": false, "extend": true}"#
		Bindings: [
			"shift+left",
			"hyper+shift+j",
		]
	},
	{
		Name:               "CursorSelectCharForward"
		Category:           "Select"
		Human:              "Right"
		JetbrainsCommand:   "Right with Selection"
		SublimeTextCommand: #"move_to", "args": {"by": "characters", "forward": true, "extend": true}"#
		Bindings: [
			"shift+right",
			"hyper+shift+k",
		]
	},

	{
		Name:               "CursorSelectLineBegin"
		Category:           "Select"
		Human:              "Line Begin"
		JetbrainsCommand:   "Move Caret to Line Start with Selection"
		SublimeTextCommand: #"move_to", "args": {"to": "bol", "extend": true}"#
		Bindings: [
			"shift+home",
			"hyper+shift+u",
		]
	},
	{
		Name:               "CursorSelectLineEnd"
		Category:           "Select"
		Human:              "Line End"
		JetbrainsCommand:   "Move Caret to Line End with Selection"
		SublimeTextCommand: #"move_to", "args": {"to": "eol", "extend": true}"#
		Bindings: [
			"shift+end",
			"hyper+shift+o",
		]
	},

	{
		Name:               "CursorSelectTextBegin"
		Category:           "Select"
		Human:              "Text Begin"
		JetbrainsCommand:   "Move Caret to Text Begin with Selection"
		SublimeTextCommand: #"move_to", "args": {"to": "bof", "extend": true}"#
		Bindings: [
			"ctrl+shift+end",
			"hyper+shift+b",
		]
	},
	{
		Name:               "CursorSelectTextEnd"
		Category:           "Select"
		Human:              "Text End"
		JetbrainsCommand:   "Move Caret to Text End with Selection"
		SublimeTextCommand: #"move_to", "args": {"to": "eof", "extend": true}"#
		Bindings: [
			"ctrl+shift+end",
			"hyper+shift+b",
		]
	},

]
