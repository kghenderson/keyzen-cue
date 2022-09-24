package cuedefs

#Editor: {

	Name: string

	CommandMap: #CommandMap 

	//...
}
	//Name: cmdName

#CommandMap: [#CommandName]: #CommandDef
#CommandMap: {

	CursorMoveToLineBackward:  #CommandDef
	CursorMoveToLineBackwardSelect:  #CommandDef
	CursorMoveToLineForward:  #CommandDef

	//CursorMoveToLineForwardSelect: #CommandDef
	//CursorMoveToCharBackward: #CommandDef
	//CursorMoveToCharBackwardSelect: #CommandDef
	//CursorMoveToCharForward: #CommandDef
	//CursorMoveToCharForwardSelect: #CommandDef
	//CursorMoveToPageBackward: #CommandDef
	//CursorMoveToPageBackwardSelect: #CommandDef
	//CursorMoveToPageForward: #CommandDef
	//CursorMoveToPageForwardSelect: #CommandDef
	//CursorMoveToLineBegin: #CommandDef
	//CursorMoveToLineBeginSelect: #CommandDef
	//CursorMoveToLineEnd: #CommandDef
	//CursorMoveToLineEndSelect: #CommandDef
	//CursorMoveToTextBegin: #CommandDef
	//CursorMoveToTextBeginSelect: #CommandDef
	//CursorMoveToTextEnd: #CommandDef
	//CursorMoveToTextEndSelect: #CommandDef
	//CursorMoveToWordForward: #CommandDef
	//CursorMoveToWordForwardSelect: #CommandDef
	//CursorMoveToWordBackward: #CommandDef
	//CursorMoveToWordBackwardSelect: #CommandDef
	//CursorMoveToSubwordForward: #CommandDef
	//CursorMoveToSubwordForwardSelect: #CommandDef
	//CursorMoveToSubwordBackward: #CommandDef
	//CursorMoveToSubwordBackwardSelect: #CommandDef
	//CursorSelectionContract: #CommandDef
	//CursorSelectionExpand: #CommandDef

	// EDIT
	//EditNodeMoveLineUp: #CommandDef
	//EditNodeMoveLineDown: #CommandDef
	//EditNodeMoveLineIn: #CommandDef
	//EditNodeMoveLineOut: #CommandDef
	//EditNodeDelete: #CommandDef
	//EditNodeRename: #CommandDef

}

#CommandDef: {
	EditorCommandName: string
}

//#Command: {
//	Name:        string
//	Category:    string
//	Subcategory: string
//	Human:       string
//	EditorCommand: string
//	// ...
//}
