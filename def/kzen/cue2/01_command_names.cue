package cue2

import (
	"list"
)


KZ: commandNamesLookup: {
	for _, cmdName in KZ.CommandNames { "\(cmdName)": true }
}
KZ: commandNamesSorted:  list.SortStrings(KZ.CommandNames)

KZ: checkCommandNamesUnique: true & list.UniqueItems(KZ.CommandNames)

// note: using forward then backward so movements can be tested from start

// CommandNames is a sorted list of names, aligns with CommandDetails
KZ: CommandNames: [...#CommandName]
KZ: CommandNames: [

	// cursor movements
	"CursorMoveToLineBackward",
	"CursorMoveToLineForward",
	"CursorMoveToCharBackward",
	"CursorMoveToCharForward",
	"CursorMoveToPageBackward",
	"CursorMoveToPageForward",
	"CursorMoveToLineBegin",
	"CursorMoveToLineEnd",
	"CursorMoveToTextBegin",
	"CursorMoveToTextEnd",
	"CursorMoveToWordBackward",
	"CursorMoveToWordForward",
	"CursorMoveToSubwordBackward",
	"CursorMoveToSubwordForward",

	// cursor selections
	"CursorMoveToLineForwardSelect",
	"CursorMoveToLineBackwardSelect",
	"CursorMoveToCharForwardSelect",
	"CursorMoveToCharBackwardSelect",
	"CursorMoveToLineEndSelect",
	"CursorMoveToLineBeginSelect",
	"CursorMoveToTextEndSelect",
	"CursorMoveToTextBeginSelect",
	"CursorMoveToWordForwardSelect",
	"CursorMoveToWordBackwardSelect",
	"CursorMoveToSubwordForwardSelect",
	"CursorMoveToSubwordBackwardSelect",

	//
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
	// "",
]
