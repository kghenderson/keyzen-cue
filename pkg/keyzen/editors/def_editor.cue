package editors

import (
	"github.com/kghenderson/keyzen/commands"
)

#Editor: {

	Name: string

	// EditorCommandNameMap links the Keyzen Command Names to the Editor Command Names
	EditorCommandNameMap: #EditorCommandNameMap

	//...
}

#EditorCommandNameMap: [string]: string

// the mapping must account for every keyzen command

#EditorCommandNameMap: {
	for _, cmdName in commands.Commands.CommandNames {
		"\(cmdName)": string
	}
}
