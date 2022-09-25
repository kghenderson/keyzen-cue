package cuedefs

import (
	"list"
)

// check that command names are valid

#CommandName: string
Commands: CommandNames: [...#CommandName]

// lookup uses struct for faster indexing
Commands: commandNamesLookup: {
	for _, cmdName in Commands.CommandNames {"\(cmdName)": true}
}

Commands: commandNamesSorted: list.SortStrings(Commands.CommandNames)

//Commands: zzCheckCommandNamesUnique: true & list.UniqueItems(Commands.CommandNames)

// _checkAllCommandsNamesHaveCommands confirms that every command name has a corresponding struct
//Commands: zzCheckAllCommandsNamesInCommands: {
// for _, cmdName in Commands.CommandNames {
//  "\(cmdName)": true & Commands.CommandDetailsMap[cmdName] != _|_
// }
//}

// _checkAllCommandsInCommandNames confirms that every command struct has a corresponding name in the cmddef list
//Commands: zzCheckAllCommandsInCommandNames: {
// for cmdName, cmd in Commands.CommandDetailsMap {
//  true & Commands.commandNamesLookup[cmdName]
// }
//}
