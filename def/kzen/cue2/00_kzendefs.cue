// a commandn

// CommandNames are the central/global names for all commands
#CommandName: string

CommandNames: [...#CommandName]

//

#CommandDetails: [cmdName=#CommandName]: {
	Name:      cmdName
	Category:  string
	HumanName: string

	...
}

#AppCommandMap: {...}


#Command: {
	Name:               string
	Human:              string
	Category:           string
	JetbrainsCommand:   string
	SublimeTextCommand: string
	Bindings: [...string]
}

// todo: contexts
