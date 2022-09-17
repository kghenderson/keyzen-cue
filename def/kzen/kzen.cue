// CUE Spec for Keymap
package kzen

// Category is used for grouping and sorting sections of commands

//#AppCommands: {
// #NavCommands
// // #NavMultiCommands |
// // #LineEditCommands
// // #FoldingCommands
//}

#CommandCategory: string

// Command
//#CommandGroup: {
// Category: #CommandCategory
//
// // ...
//}

// #NavCommands: #CommandGroup & {}
// #NavMultiCommands: #CommandGroup & {Category: "02-Nav-Multi"}
// #FoldingCommands: #CommandGroup & {Category: "02-Nav-Multi"}

// #CommandDef defines individual commans
// #CommandDef: {
//  ...
// }

#CmdAssignment: {
	// AppLabel is the friendly command name from application front-end
	AppLabel?: string

	// AppCode is the back-end code for the command within the application
	AppCode?: string

	Binds: #CmdBinds
}

#CmdBinds: [...string]

// NavCommands -->
#AppCommands: {
	// Category: "Nav"

	"caret.move.up"?:               #CmdAssignment
	"caret.move.down"?:             #CmdAssignment
	"caret.move.left":              #CmdAssignment
	"caret.move.right":             #CmdAssignment
	"caret.move.up.with-select":    #CmdAssignment
	"caret.move.down.with-select":  #CmdAssignment
	"caret.move.left.with-select":  #CmdAssignment
	"caret.move.right.with-select": #CmdAssignment

	"caret.move.line.begin":             #CmdAssignment
	"caret.move.line.end":               #CmdAssignment
	"caret.move.line.begin.with-select": #CmdAssignment
	"caret.move.line.end.with-select":   #CmdAssignment

	// doc begin/end
	"caret.move.word.start":             #CmdAssignment
	"caret.move.word.end":               #CmdAssignment
	"caret.move.word.start.with-select": #CmdAssignment
	"caret.move.word.end.with-select":   #CmdAssignment

	"caret.move.subword.start":             #CmdAssignment
	"caret.move.subword.end":               #CmdAssignment
	"caret.move.subword.start.with-select": #CmdAssignment
	"caret.move.subword.end.with-select":   #CmdAssignment

	"goto"?: #CmdAssignment
}

// NavMultiCommands are for navigation with multiple cursors
#AppCommands: {
	"cut":   #CmdAssignment
	"copy":  #CmdAssignment
	"paste": #CmdAssignment
	"undo":  #CmdAssignment
	"redo":  #CmdAssignment
}

// NavMultiCommands are for navigation with multiple cursors
#AppCommands: {
	"caret.clone.above": #CmdAssignment
	"caret.clone.below": #CmdAssignment
}

#AppCommands: {
	"find":             #CmdAssignment
	"find-in-files":    #CmdAssignment
	"find-next"?:       #CmdAssignment
	"find-previous"?:   #CmdAssignment
	"replace":          #CmdAssignment
	"replace-in-files": #CmdAssignment
}

#AppCommands: {
	"rename"?: #CmdAssignment
}

//#LineEditCommands: #CommandGroup & {
// Kind: "LineEdit"
//
// "Line-Duplicate": {
//  Bind1: ["Cmd+D"]
// }
// "Line-Delete": {
//  Bind1: ["Cmd+Shift+Delete"]
// }
// "Line-Insert-Above": {
//  Bind1: ["Cmd+Shift+u"]
// }
// "Line-Insert-Below": {
//  Bind1: ["Cmd+Shift+n"]
// }
// "Line-Move-Left": {
//  JB: {
//
//  }
// }
//
//}

// #TreeCommands: #CommandGroup & {
//   Kind: "Tree"
//  "Rename File": {
//   Bind1: ["Cmd+T"]
//  }
//  "Line-Delete": {
//   Bind1: ["Cmd+Shift+Delete"]
//  }
//  "Line-Insert-Above": {
//   Bind1: ["Cmd+Shift+u"]
//  }
//  "Line-Insert-Below": {
//   Bind1: ["Cmd+Shift+n"]
//  }
//  "Line-Move-Left": {
//   JB: {
//
//   }
//  }
//
// }

//#FoldingCommands: #CommandGroup & {
// Kind: "Folding"
//}

//#MiscCommands: #CommandGroup & {
// "Find-In-File": #CommandDef
// "Replace-In-File": #CommandDef
// "terminal.clear": #CommandDef
//}

// Bookmarks

// "Move-Caret-Up":

// "Move-Caret-Down": Name
// "Insert-Line-Above"
// "Insert-Line-Below"
