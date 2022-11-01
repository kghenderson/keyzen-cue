package keys

// see here: https://github.com/qmk/qmk_firmware/blob/master/docs/keycodes_basic.md

Keys: logicalKeyNamesLookup: {
	for keyIndex, keyName in Keys.logicalKeyNamesList {
		"\(keyName)": keyIndex
	}
}

// Universal Keys are the same across operating systems
Keys: logicalKeyNamesList: [
	"Super",
	"Alt",
	"Ctrl",
	"Shift",

	"Up",
	"Down",
	"Left",
	"Right",

	"Enter",
	"Space",
	"Tab",
	"PageUp",
	"PageDown",
	"Home",
	"End",
	"Escape",
	"Insert",
	"Delete",

	"Minus",        // dash, minus, underscore -, _
	"Equal",        // equals, plus =, +
	"LeftBracket",  // open/left bracket [
	"RightBracket", // close/right bracket ]
	"Backslash",    // backslash, whack \
	"Semicolon",    // semicolon ;
	"Quote",        // single quote '
	"Comma",        // comma ,
	"Dot",          // period .
	"Slash",        // forward slash
	"Grave",        // grave, backtick `

	"A",
	"B",
	"C",
	"D",
	"E",
	"F",
	"G",
	"H",
	"I",
	"J",
	"K",
	"L",
	"M",
	"N",
	"O",
	"P",
	"Q",
	"R",
	"S",
	"T",
	"U",
	"V",
	"W",
	"X",
	"Y",
	"Z",
	"0",
	"1",
	"2",
	"3",
	"4",
	"5",
	"6",
	"7",
	"8",
	"9",
]
