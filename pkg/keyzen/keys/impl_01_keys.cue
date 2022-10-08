package keys

Keys: #Keys & {
}

Keys: modifierKeys: {
	"super":     true
	"alt":       true
	"ctrl":      true
	"shift":     true
	"hyper":     true
	"primary":   true
	"secondary": true
	"pinky":     true
	"thumb":     true
}

Keys: relativeKeys: {
	"hyper": {
		Linux: ["super", "ctrl", "alt"]
		Mac: ["cmd", "ctrl", "opt"]
		Mac2: ["cmd", "ctrl", "opt"]
		Windows: ["super", "ctrl", "alt"]
	}
	"super": {
		Linux: ["super"]
		Mac: ["super"]
		Mac2: ["super"]
		Windows: ["super"]
	}
	"primary": {
		Linux: ["ctrl"]
		Mac: ["cmd"]
		Mac2: ["cmd"]
		Windows: ["ctrl"]
	}
	"secondary": {
		Linux: ["super", "alt"]
		Mac: ["ctrl"]
		Mac2: ["ctrl"]
		Windows: ["alt"]
	}
	"pinky": {
		Linux: ["ctrl"]
		Mac: ["ctrl"]
		Mac2: ["super"]
		Windows: ["ctrl"]
	}
	"thumb": {
		Linux: ["super", "alt"]
		Mac: ["cmd"]
		Mac2: ["ctrl"]
		Windows: ["alt"]
	}
}

Keys: compoundKeys: {
	"hyper": {
		ctrl:  true
		alt:   true
		super: true
	}
}
