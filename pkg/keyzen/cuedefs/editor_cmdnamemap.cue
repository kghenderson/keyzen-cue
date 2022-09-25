package cuedefs

#EditorCommandNameMap: [string]: string

// the mapping must account for every keyzen command

#EditorCommandNameMap: {
	for _, cmdName in Commands.CommandNames {
		"\(cmdName)": string
	}
}
