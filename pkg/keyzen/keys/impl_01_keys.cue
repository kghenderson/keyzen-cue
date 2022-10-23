package keys

// Keys: #Keys & {
// }

modifierKeys: {
	"Super":     true
	"Alt":       true
	"Ctrl":      true
	"Shift":     true
	"Hyper":     true
	"Primary":   true
	"Secondary": true
	"Pinky":     true
	"Thumb":     true
}

relativeKeys: {
	// "Hyper": {
	// 	Linux: ["Super", "Ctrl", "Alt"]
	// 	Mac: ["Super", "Ctrl", "Alt"] // ["Cmd", "Ctrl", "Opt"]
	// 	Mac2: ["Super", "Ctrl", "Alt"] // ["Cmd", "Ctrl", "Opt"]
	// 	Windows: ["Super", "Ctrl", "Alt"] // ["Super", "Ctrl", "Alt"]
	// }
	// "Super": {
	// 	Linux: ["Super"]
	// 	Mac: ["Super"]
	// 	Mac2: ["Super"]
	// 	Windows: ["Super"]
	// }
	"Primary": {
		Linux: ["Ctrl"]
		Mac: ["Super"] // Cmd
		Mac2: ["Super"] // Cmd
		Windows: ["Ctrl"]
	}
	"Secondary": {
		Linux: ["Super", "Alt"] // todo: Ubuntu showing this as combo
		Mac: ["Ctrl"]
		Mac2: ["Ctrl"]
		Windows: ["Alt"]
	}
	"Pinky": {
		Linux: ["Ctrl"]
		Mac: ["Ctrl"]
		Mac2: ["Super"]
		Windows: ["Ctrl"]
	}
	"Thumb": {
		Linux: ["Super", "Alt"]
		Mac: ["Super"] //Cmd
		Mac2: ["Ctrl"]
		Windows: ["Alt"]
	}
}

compoundKeys: {
	"Hyper": {
		Ctrl:  true
		Alt:   true
		Super: true
	}
}
