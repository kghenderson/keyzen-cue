package cue2

CommandNames: [for c in Commands {c.Name}]

Commands: [
	// cursor moves
	{
		Name:             "CursorMoveLineBackward"
		Human:            "Up"
		Category:         "Nav"
		JetbrainsCommand: "Up"
		Bindings: [
			"up",
			"hyper+i",
		]
	},
	{
		Name:             "CursorMoveLineForward"
		Human:            "Down"
		Category:         "Nav"
		JetbrainsCommand: "Down"
		Bindings: [
			"down",
			"hyper+k",
		]
	},
	{
		Name:             "CursorMoveCharBackward"
		Human:            "Left"
		Category:         "Nav"
		JetbrainsCommand: "Left"
		Bindings: [
			"left",
			"hyper+j",
		]
	},
	{
		Name:             "CursorMoveCharForward"
		Human:            "Right"
		Category:         "Nav"
		JetbrainsCommand: "Right"
		Bindings: [
			"right",
			"hyper+l",
		]
	},
		{
		Name:             "CursorMovePageBackward"
		Human:            "Page Up"
		Category:         "Nav"
		JetbrainsCommand: "Page Up"
		Bindings: [
			"pgup",
			"hyper+y",
		]
	},
	{
		Name:             "CursorMovePageForward"
		Human:            "Page Down"
		Category:         "Nav"
		JetbrainsCommand: "Page Down"
		Bindings: [
			"pgdn",
			"hyper+h",
		]
	},

	{
		Name:             "CursorMoveLineBegin"
		Human:            "Line Begin"
		Category:         "Nav"
		JetbrainsCommand: "Move Caret to Line Start"
		Bindings: [
			"home",
			"hyper+u",
			"primary+alt+left",
		]
	},
	{
		Name:             "CursorMoveLineEnd"
		Human:            "Line End"
		Category:         "Nav"
		JetbrainsCommand: "Move Caret to Line End"
		Bindings: [
			"home",
			"hyper+o",
			"primary+alt+right",
		]
	},

	// cursor selections
	{
		Name:          "CursorSelectLineBackward"
		Human:         "Select Up"
		Category:      "Select"
		JetbrainsName: "Up with Selection"
	},
	{
		Name:          "CursorSelectLineForward"
		Human:         "Select Down"
		Category:      "Select"
		JetbrainsName: "Down with Selection"
	},
	{
		Name:          "CursorSelectCharBackward"
		Human:         "Select Left"
		Category:      "Select"
		JetbrainsName: "Left with Selection"
	},
	{
		Name:          "CursorSelectCharForward"
		Human:         "Select Right"
		Category:      "Select"
		JetbrainsName: "Right with Selection"
	},

]


//HumanBindings: {
//	"up":          "CursorMoveLineUp"
//	"down":        "CursorMoveLineDown"
//	"left":        "CursorMoveCharLeft"
//	"right":       "CursorMoveCharRight"
//	"shift+up":    "CursorSelectLineUp"
//	"shift+down":  "CursorSelectLineDown"
//	"shift+left":  "CursorSelectCharLeft"
//	"shift+right": "CursorSelectCharRight"
//}

//HumanBindings: {
//	"hyper+i":       "CursorMoveUp"
//	"hyper+shift+i": "CursorSelectUp"
//}

// NavBindings
//Commands: CursorUp: Bindings: Arrrows: "up"
//Commands: CursorUp: Bindings: Arrrows: "down"
