package cue2

import (
	"list"
)


commandNamesLookup: {
	for _, cmdName in CommandNames { "\(cmdName)": true }
}
commandNamesSorted:  list.SortStrings(CommandNames)

checkCommandNamesUnique: true & list.UniqueItems(CommandNames)

// note: using forward then backward so movements can be tested from start

// CommandNames is a sorted list of names, aligns with CommandDetails
CommandNames: [

	// cursor movements
	"CursorMoveToLineForward",
	"CursorMoveToLineBackward",
	"CursorMoveToCharForward",
	"CursorMoveToCharBackward",
	"CursorMoveToPageForward",
	"CursorMoveToPageBackward",
	"CursorMoveToLineEnd",
	"CursorMoveToLineBegin",
	"CursorMoveToTextEnd",
	"CursorMoveToTextBegin",
	"CursorMoveToWordForward",
	"CursorMoveToWordBackward",
	"CursorMoveToSubwordForward",
	"CursorMoveToSubwordBackward",

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
