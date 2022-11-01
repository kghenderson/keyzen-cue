package sublime

import (
	"encoding/json"
)

#SublimeCommand: {
	command: string

	args?: {...}
	argsText?: string
	if args != _|_ {argsText: json.Marshal(args)}

}

#SublimeMoveCmd: #SublimeCommand & {
	command: "move"
	args: {
		by:      "characters" | "lines" | "pages" | "subwords" | "words"
		forward: bool | *true
		extend:  bool | *false
	}
}
#SublimeMoveToCmd: #SublimeCommand & {
	command: "move_to"
	args: {
		to:     "bof" | "bol" | "eof" | "eol"
		extend: bool | *false
	}
}
