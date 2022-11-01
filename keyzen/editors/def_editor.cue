package editors

// import (
//  "github.com/kghenderson/keyzen/commands"
// )

#Editor: {

	Name: string

	// EditorCommandNameMap links the Keyzen Command Names to the Editor Command Names
	EditorCommandNameMap: #EditorCommandNameMap

	//...
}

// the mapping must account for every keyzen command

#EditorCommandNameMap: [cmdName=string]: #EditorCommandDef
//{
// for _, cmdName in commands.Commands.CommandNames {
//  "\(cmdName)"?: {...}
// }
//}

#EditorCommandDef: {
	// each editor may define its own
	...
}
