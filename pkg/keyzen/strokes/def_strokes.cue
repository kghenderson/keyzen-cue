package strokes

import (
	"strings"

	"github.com/kghenderson/keyzen/commands"
)

#Strokes: {
	Name:       string
	StrokesMap: #StrokesMap

	strokesRev: {
		for cmdKey, strokesListList in StrokesMap {
			for _, strokesList in strokesListList {
				for _, strokeText in strokesList {
					"\(strokeText)": true
				}
			}
		}
	}

	strokesRev2: {
		for cmdKey, strokesListList in StrokesMap {
			for _, strokesList in strokesListList {
				for _, strokesText in strokesList {
					//                   "\(cmdKey)": true
					"\(strokesText)": "\(cmdKey)" // : true

					//                   "\(strokeText)": [...cmdKey]
				}
			}
		}
	}

	strokesRev3: {
		for cmdKey, strokesListList in StrokesMap {
			for _, strokesList in strokesListList {
				for _, strokesText in strokesList {
					//                   "\(cmdKey)": true
					let hKeys = strings.SplitN(strokesText, "+", -1)
					"\(strokesText)": hKeys
				}
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
