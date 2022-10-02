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
		FMac: ["cmd", "ctrl", "opt"]
		PC: ["super", "ctrl", "alt"]
	}
	"primary": {
		Mac: ["cmd"]
		FMac: ["cmd"]
		PC: ["ctrl"]
	}
	"secondary": {
		Mac: ["alt"]
		FMac: ["alt"]
		PC: ["alt"]
	}
	"pinky": {
		Mac: ["ctrl"]
		FMac: ["cmd"]
		PC: ["alt"]
	}
	"thumb": {
		Mac: ["cmd"]
		FMac: ["alt"]
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
