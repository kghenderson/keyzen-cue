package jetbrains

import (
	keyzen "github.com/kghenderson/keyzen/cuedefs"
)

Editor: keyzen.#Editor & {
	Name: "Jetbrains"

	EditorCommandNameMap: {
		"CursorMoveToCharBackward":          "Left"
		"CursorMoveToCharBackwardSelect":    "Left with Selection"
		"CursorMoveToCharForward":           "Right"
		"CursorMoveToCharForwardSelect":     "Right with Selection"
		"CursorMoveToLineBackward":          "Up"
		"CursorMoveToLineBackwardSelect":    "Up with Selection"
		"CursorMoveToLineBegin":             "Move Caret to Line Start"
		"CursorMoveToLineBeginSelect":       "Move Caret to Line Start with Selection"
		"CursorMoveToLineEnd":               "Move Caret to Line End"
		"CursorMoveToLineEndSelect":         "Move Caret to Line End with Selection"
		"CursorMoveToLineForward":           "Down"
		"CursorMoveToLineForwardSelect":     "Down with Selection"
		"CursorMoveToPageBackward":          "Page Up"
		"CursorMoveToPageBackwardSelect":    "Page Up with Selection"
		"CursorMoveToPageForward":           "Page Down"
		"CursorMoveToPageForwardSelect":     "Page Down with Selection"
		"CursorMoveToSubwordBackward":       #"Move Caret to Previous Word in Different "CamelHumps" Mode"#
		"CursorMoveToSubwordBackwardSelect": #"Move Caret to Previous Word in Different "CamelHumps" Mode with Selection"#
		"CursorMoveToSubwordForward":        #"Move Caret to Next Word in Different "CamelHumps" Mode"#
		"CursorMoveToSubwordForwardSelect":  #"Move Caret to Next Word in Different "CamelHumps" Mode with Selection"#
		"CursorMoveToTextBegin":             "Move Caret to Text Start"
		"CursorMoveToTextBeginSelect":       "Move Caret to Text Begin with Selection"
		"CursorMoveToTextEnd":               "Move Caret to Text End"
		"CursorMoveToTextEndSelect":         "Move Caret to Text End with Selection"
		"CursorMoveToWordBackward":          "Move Caret to Previous Word"
		"CursorMoveToWordBackwardSelect":    "Move Caret to Previous Word with Selection"
		"CursorMoveToWordForward":           "Move Caret to Next Word"
		"CursorMoveToWordForwardSelect":     "Move Caret to Next Word with Selection"
		"CursorSelectionContract":           "Shrink Selection"
		"CursorSelectionExpand":             "Extend Selection"
		"EditNodeDelete":                    "Delete Line"
		"EditNodeDuplicate":                 "Duplicate Entire Lines"
		"EditNodeMoveLineDown":              "Move Line Down"
		"EditNodeMoveLineIn":                "Move Line Right"
		"EditNodeMoveLineOut":               "Move Line Left"
		"EditNodeMoveLineUp":                "Move Line Up"
		"EditNodeRename":                    "Rename..."
	}
}
