package strokes

import (
	// "strings"

	"github.com/kghenderson/keyzen/commands"
)

#Strokes: {
	Name:             string
	StrokeCmdDefsMap: #StrokeCmdDefsMap
	StrokesMap:       #StrokesMap
}

// Stroke Definitions - Universal, Human-form, e.g. hyper+i
#StrokeCmdDefsMap: [cmdName=commands.#CommandName]: #StrokeCmdDefs
#StrokeCmdDefs: [...#StrokeCmdDef]
#StrokeCmdDef: [...string]

#StrokesMap: [cmdName=commands.#CommandName]: #StrokeDetails

#StrokeDetails: {
	// cmdDefs?:
	...
}

//for cmdName, cmdDefs in #Strokes.StrokeCmdDefsMap {
// #Strokes: StrokesMap: "\(cmdName)": {
//  "x": true
// }
//}

// #StrokeContext: string
// #StrokesContextMap: [context=#StrokeContext]: #StrokesList
// #StrokesList: [...string]

// #Strokes:
// {for cmdName, cmdDefs in #Strokes.StrokeCmdDefsMap {
//  StrokeMap: "\(cmdName)": {
//   "x": true
//  }
// }
