package intellij

#IntellijCommand: {
	Label:    string
	ActionId: string
	...
}

//

#KeyMap: {
	Version: string
	Name:    string
	Parent:  string
	Actions: #ActionsMap
}

#ActionsMap: [id=#ActionId]: #Action

#ActionId: string

#Action: {
	kind:      "action"
	id:        #ActionId
	shortcuts: #KeyboardShortcutsList
	...
}

#KeyboardShortcutsList: [...#KeyboardShortcut]

#KeyboardShortcut: {
	kind: "keyboard-shortcut"
	...
}
