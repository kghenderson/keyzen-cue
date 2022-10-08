package commands

// CommandNames is a sorted list of names, aligns with CommandDetails
Commands: CommandNames: [

	// NAVIGATING & SELECTING

	// Cursor Movements
	"CursorMoveToLineForward",     // down
	"CursorMoveToLineBackward",    // up
	"CursorMoveToCharForward",     // right
	"CursorMoveToCharBackward",    // left
	"CursorMoveToSubwordForward",  // subword right
	"CursorMoveToSubwordBackward", // subword left
	"CursorMoveToWordForward",     // word right
	"CursorMoveToWordBackward",    // word left
	"CursorMoveToLineEnd",         // line end
	"CursorMoveToLineBegin",       // line home
	"CursorMoveToPageForward",     // page down
	"CursorMoveToPageBackward",    // page up
	"CursorMoveToTextEnd",         // text end
	"CursorMoveToTextBegin",       // text begin

	// Multi-Cursors
	"CursorMultiCloneAbove",      // caret above
	"CursorMultiCloneBelow",      // caret below
	"CursorMultiCloneOnLineEnds", // carets on lines

	// Cursor Selections
	"CursorMoveToLineForwardSelect",     // select down
	"CursorMoveToLineBackwardSelect",    // select up
	"CursorMoveToCharForwardSelect",     // select right
	"CursorMoveToCharBackwardSelect",    // select left
	"CursorMoveToSubwordForwardSelect",  // select subword right
	"CursorMoveToSubwordBackwardSelect", // select subword left
	"CursorMoveToWordForwardSelect",     // select word right
	"CursorMoveToWordBackwardSelect",    // select word left
	"CursorMoveToLineEndSelect",         // select line end
	"CursorMoveToLineBeginSelect",       // select line home
	"CursorMoveToPageForwardSelect",     // select page down
	"CursorMoveToPageBackwardSelect",    // select page up
	"CursorMoveToTextEndSelect",         // select text end
	"CursorMoveToTextBeginSelect",       // select text begin

	"CursorSelectAll",           // select entire text
	"CursorSelectScopeExpand",   // selection scope expand
	"CursorSelectScopeContract", // selection scope contract

	// "CursorSelectWordOccurrencesAll",           // select all occurrences of word
	// "CursorSelectWordOccurrencesNext",          // select next occurrence of word
	// "CursorSelectWordOccurrencesPrevious",    // select previous occurrence of word

	// EDITING
	"EditNodeInsertAboveParent",  // insert parent above
	"EditNodeInsertAboveSibling", // insert above
	"EditNodeInsertBelowSibling", // insert below
	"EditNodeInsertBelowChild",   // insert child  below
	"EditNodeInsertDuplicate",    // duplicate
	"EditNodeMoveUp",             // move up
	"EditNodeMoveDown",           // move down
	"EditNodeMoveOut",            // move left (unindent)
	"EditNodeMoveIn",             // move right (indent)
	"EditNodeRename",             // rename
	"EditNodeJoin",               // join
	"EditNodeSplit",              // split
	"EditNodeDelete",             // rename

	// "EditNodesSort",                // sort
	// "EditNodesUnique",              // unique/de-duplicate

	// "EditTextCaseToUpper",
	// "EditTextCaseToLower",
	// "EditSort",
	// "EditAlign",
	// "Rename",
	// "EditTextReformat"
	// EditTextDelete (ctrl+.)

	// FileSave
	// FileSaveAs
	// FileOpen
	// FileOpenExternally

	// "Undo",
	// "Redo",
	// "Copy",
	// "Cut",
	// "Paste",
	// "Zoom In",
	// "Zoom Out",
	// "Zoom Reset",
	// "Scroll Down",
	// "Scroll Up",
	// "Select All"
	// goto/search/replace
	// Refresh/Reload

	// macro
	// repeat
	// clipboard

	// "Next Occurrence of Word at Cursor",
	// "Previous Occurrence of Word at Cursor",
	// "Select All Occurrences",

	// "Goto in File",
	// "Goto in All Files",
	// "Find in File",
	// "Replace in File",
	// "Find in All Files",
	// "Replace in All Files",

	// Folding
	// "Hoist",
	// "Unhoist",
	// "Collapse",
	// "Expand",

	// other
	// "Execute",
	// "",

	// templates

	// window/pane mgt
	// "Split Right",
	// "Split Down",
	// GoTo Right
	// GoTo Down
	// "Focus Terminal",
	// "Focus Editor",
	// "Focus Tree",
	// "",

	// NOTES
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
