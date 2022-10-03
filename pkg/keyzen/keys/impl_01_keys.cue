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
		Mac: ["cmd", "ctrl", "opt"]
		Mac2: ["cmd", "ctrl", "opt"]
		PC: ["super", "ctrl", "alt"]
	}
	"primary": {
		PC: ["ctrl"]
		Mac: ["cmd"]
		Mac2: ["cmd"]
	}
	"secondary": {
		PC: ["alt"]
		Mac: ["ctrl"]
		Mac2: ["ctrl"]
	}
	"pinky": {
		PC: ["ctrl"]
		Mac: ["ctrl"]
		Mac2: ["cmd"]
	}
	"thumb": {
		PC: ["alt"]
		Mac: ["cmd"]
		Mac2: ["ctrl"]
	}
}

Keys: compoundKeys: {
	"hyper": {
		ctrl:  true
		alt:   true
		super: true
	}
}
