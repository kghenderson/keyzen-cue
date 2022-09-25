package cuedefs

// CommandNames is a sorted list of names, aligns with CommandDetails
Commands: CommandNames: [

	// NAVIGATING & SELECTING

	// Cursor Movements
	"CursorMoveToLineBackward",       // up
	"CursorMoveToLineBackwardSelect", // up+
	"CursorMoveToLineForward",        // down
	"CursorMoveToLineForwardSelect",  // down+
	"CursorMoveToCharBackward",       // left
	"CursorMoveToCharBackwardSelect", // left+
	"CursorMoveToCharForward",        // right
	"CursorMoveToCharForwardSelect",  // right+
	"CursorMoveToPageBackward",       // pgup
	"CursorMoveToPageBackwardSelect", // pgup+
	"CursorMoveToPageForward",        // pgdn
	"CursorMoveToPageForwardSelect",  // pgdn+
	"CursorMoveToLineBegin",          // line home
	"CursorMoveToLineBeginSelect",    // line home+
	"CursorMoveToLineEnd",            // line end
	"CursorMoveToLineEndSelect",      // line end+
	"CursorMoveToTextBegin",          // doc home
	"CursorMoveToTextBeginSelect",    // doc home+
	"CursorMoveToTextEnd",            // doc end
	"CursorMoveToTextEndSelect",      // doc end+

	// Cursor Word Jumps
	"CursorMoveToWordBackward",          // word left
	"CursorMoveToWordBackwardSelect",    // word left+
	"CursorMoveToWordForward",           // word right
	"CursorMoveToWordForwardSelect",     // word right+
	"CursorMoveToSubwordBackward",       // subword left
	"CursorMoveToSubwordBackwardSelect", // subword left+
	"CursorMoveToSubwordForward",        // subword right
	"CursorMoveToSubwordForwardSelect",  // subword right+

	// Selection Expand & Contraction
	"CursorSelectAll",         // select all+
	"CursorSelectionExpand",   // expand+
	"CursorSelectionContract", // contract+

	// Multi-Cursors
	"CursorMultiCloneAbove",      // caret above
	"CursorMultiCloneBelow",      // caret below
	"CursorMultiCloneOnLineEnds", // carets on lines

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

	// "EditNodesSort",             // sort
	// "EditNodesUnique",             // unique/de-duplicate

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
