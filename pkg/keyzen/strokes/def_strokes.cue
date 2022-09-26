package strokes

import (
	"github.com/kghenderson/keyzen/commands"
)

#Strokes: {
	Name:       string
	StrokesMap: #StrokesMap

	strokesRev: {
		for _, StrokesList in StrokesMap {
			for _, X in StrokesList {
				true
			}
		}
	}
	...
}

#StrokeContext: string
#StrokesList: [...string]
#StrokesContextMap: [context=#StrokeContext]: #StrokesList

#StrokesMap: {
	for _, cmdName in commands.Commands.CommandNames {
		"\(cmdName)": [...#StrokesList]
	}
}

#Key:
 "ctrl" |
 "hyper" |
 "shift" |
 "pinky" |
 ""
