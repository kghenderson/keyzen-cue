package cuedefs

// CommandNames is a sorted list of names, aligns with CommandDetails
Cmds: CommandNames: [

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

	"EditNodeMoveLineUp",   // line up
	"EditNodeMoveLineDown", // line down
	"EditNodeMoveLineOut",  // line left (unindent)
	"EditNodeMoveLineIn",   // line right (indent)
	"EditNodeRename",       // rename
	"EditNodeDelete",       // rename
	"EditNodeDuplicate",    // duplicate

	// "EditTextCaseToUpper",
	// "EditTextCaseToLower",
	// "EditSort",
	// "EditAlign",
	// "Rename",


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

	// "",
	// "",
	// "",
	// "",

	// other
	// "Execute",
	// "",

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
