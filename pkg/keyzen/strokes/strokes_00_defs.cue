package cuedefs

#StrokesDef: {
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
	for _, cmdName in Commands.CommandNames {
		"\(cmdName)": [...#StrokesList]
	}
}
