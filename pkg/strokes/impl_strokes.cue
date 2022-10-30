package strokes

import (
	"strings"

	"github.com/kghenderson/keyzen/keys"
)

// "github.com/kghenderson/keyzen/commands"

#Strokes: {
	StrokeCmdDefsMap: #StrokeCmdDefsMap
	StrokesMap: {
		for cmdName, cmdDefLists in StrokeCmdDefsMap {
			"\(cmdName)": [
				for _, cmdDefList in cmdDefLists {
					for _, cmdDefText in cmdDefList {
						let defKeyList = strings.SplitN(cmdDefText, "+", -1)
						DefText: "\(cmdDefText)"
						for _, dkn in defKeyList {
							let keyDetailBindings = keys.DefinableKeyMap["\(dkn)"].Bindings
							Bindings: {
								Linux:   keyDetailBindings.Linux
								Mac:     keyDetailBindings.Mac
								Mac2:    keyDetailBindings.Mac2
								Windows: keyDetailBindings.Windows
							}
						}
					}
				},
			]
		}
	}
}

//     let cDefs = Strokes.StrokeCmdDefsMap["\(cmdName)"]
//     if cmdDefs != _|_ {
//    "\(cmdName)": cmdDefs: strokeCmdDefs

//}

//for strokesKey, strokes in #Strokes {
// #Strokes: "\(strokesKey)": StrokesMap: "hmm1": {"hmm": true}
//}

// Populate the StrokesMap from the Definitions
// Strokes: StrokesMap: {
//  // loop by command-names, using custom sorting
//   let strokeCmdDefs = Strokes.StrokeCmdDefsMap["\(cmdName)"]
//  for _, cmdName in commands.Commands.CommandNames {
//   if strokeCmdDefs != _|_ {
//    "\(cmdName)": cmdDefs: strokeCmdDefs
//   }
//
//  }
// }

// ah, need to loop the
// for each command?

// strokesRev: {
//  for cmdKey, strokesListList in StrokesMap {
//   for _, strokesList in strokesListList {
//    for _, strokeText in strokesList {
//     "\(strokeText)": true
//    }
//   }
//  }
// }

// strokesRev2: {
//  for cmdKey, strokesListList in StrokesMap {
//   for _, strokesList in strokesListList {
//    for _, strokesText in strokesList {
//     //                   "\(cmdKey)": true
//     "\(strokesText)": "\(cmdKey)" // : true
//
//     //                   "\(strokeText)": [...cmdKey]
//    }
//   }
//  }
// }

// strokesRev3: {
//  for cmdKey, strokesListList in StrokesMap {
//   for _, strokesList in strokesListList {
//    for _, strokesText in strokesList {
//     //                   "\(cmdKey)": true
//     let hKeys = strings.SplitN(strokesText, "+", -1)
//     "\(strokesText)": hKeys
//    }
//   }
//  }
// }
