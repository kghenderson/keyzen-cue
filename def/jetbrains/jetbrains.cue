package jetbrains

#Application: {
	Kind: "Application"
	...
}

#Component: {
	Kind: "Component"
	Name: string
	...
}

#ComponentOption: {
	Name:  string
	Value: string
}

#EditorSettings: #Component

// EditorSettings: editor.xml

Application: #Application & {
	"EditorSettings": #Component & {
		Option: {
			"IS_VIRTUAL_SPACE":            true
			"IS_ENSURE_NEWLINE_AT_EOF":    true
			"REMOVE_TRAILING_BLANK_LINES": true
			"ADDITIONAL_PAGE_AT_BOTTOM":   true
			"IS_DND_ENABLED":              false
		}
	}

	"EditorRichCopySettings": #Component & {
		Option: {
			"IS_VIRTUAL_SPACE":            true
			"IS_ENSURE_NEWLINE_AT_EOF":    true
			"REMOVE_TRAILING_BLANK_LINES": true
			"ADDITIONAL_PAGE_AT_BOTTOM":   true
			"IS_DND_ENABLED":              false
		}
	}
}
