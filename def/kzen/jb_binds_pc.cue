// kzen mapping for jetbrains
package kzen

Jetbrains: Commands: #AppCommands & {
	let hyper = "ctrl+alt+super"

	// navigation
	"caret.move.up": Binds: [hyper + "+i"]
	"caret.move.down": Binds: [hyper + "+k"]
	"caret.move.left": Binds: [hyper + "+j"]
	"caret.move.right": Binds: [hyper + "+l"]

	"caret.move.up.with-select": Binds: [hyper + "+shift+i"]
	"caret.move.down.with-select": Binds: [hyper + "+shift+k"]
	"caret.move.left.with-select": Binds: [hyper + "+shift+j"]
	"caret.move.right.with-select": Binds: [hyper + "+shift+l"]

	"caret.move.line.begin": Binds: ["home", "cmd+ctrl+right"]
	"caret.move.line.end": Binds: ["end", "cmd+ctrl+left"]
	"caret.move.line.begin.with-select": Binds: ["shift+home", "cmd+ctrl+shift+right"]
	"caret.move.line.end.with-select": Binds: ["shift+end", "cmd+ctrl+shift+right"]

	"caret.move.word.start": Binds: ["cmd+left"]
	"caret.move.word.end": Binds: ["cmd+right"]
	"caret.move.word.start.with-select": Binds: ["cmd+shift+left"]
	"caret.move.word.end.with-select": Binds: ["cmd+shift+right"]

	"goto": Binds: ["cmd+g"]
}

// Commands: {
//  "selection.case.to-lower": ["cmd", "l"]
//  "selection.case.to-upper": ["cmd", "u"]
// }
