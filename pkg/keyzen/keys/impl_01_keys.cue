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
		Mac: ["cmd"]
		Mac2: ["cmd"]
		PC: ["ctrl"]
	}
	"secondary": {
		Mac: ["alt"]
		Mac2: ["alt"]
		PC: ["alt"]
	}
	"pinky": {
		Mac: ["ctrl"]
		Mac2: ["cmd"]
		PC: ["alt"]
	}
	"thumb": {
		Mac: ["cmd"]
		Mac2: ["alt"]
		PC: ["alt"]
	}
}

Keys: compoundKeys: {
	"hyper": {
		ctrl:  true
		alt:   true
		super: true
	}
}
