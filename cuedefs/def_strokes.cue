package cuedefs

#StrokesDef: {
	Name:       string
	StrokesMap: #StrokesMap
}

#StrokeContext: string
#StrokesList: [...string]
#StrokesContextMap: [context=#StrokeContext]: #StrokesList

#StrokesMap: {
	for _, cmdName in Cmds.CommandNames {
		"\(cmdName)": #StrokesContextMap
	}
}
