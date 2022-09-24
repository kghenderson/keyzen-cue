package cuedefs

import (
	"list"
)

// check that command names are valid

#CommandName: string
Cmds: CommandNames: [...#CommandName]

// lookup uses struct for faster indexing
Cmds: commandNamesLookup: {
	for _, cmdName in Cmds.CommandNames {"\(cmdName)": true}
}
Cmds: commandNamesSorted: list.SortStrings(Cmds.CommandNames)

Cmds: zzCheckCommandNamesUnique: true & list.UniqueItems(Cmds.CommandNames)


// _checkAllCommandsNamesHaveCommands confirms that every command name has a corresponding struct
Cmds: zzCheckAllCommandsNamesInCommands: {
	for _, cmdName in Cmds.CommandNames {
		"\(cmdName)": true & Cmds.Commands[cmdName] != _|_
	}
}

// _checkAllCommandsInCommandNames confirms that every command struct has a corresponding name in the cmddef list
Cmds: zzCheckAllCommandsInCommandNames: {
	for cmdName, cmd in Cmds.Commands {
		 true & Cmds.commandNamesLookup[cmdName]
	}
}
