package keys

definableKeyIndexLookup: {
	for keyIndex, keyName in DefinableKeyNames {
		"\(keyName)": keyIndex
	}
}

// see here: https://github.com/qmk/qmk_firmware/blob/master/docs/keycodes_basic.md

// Universal Keys are the same across operating systems
ActualKeyNamesUniversal: [
	"Ctrl",
	"Shift",

	"Up",
	"Down",
	"Left",
	"Right",

	"Enter",
	"Space",
	"Tab",
	"Pageup",
	"Pagedown",
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

ActualKeyNamesMac: [
	"Cmd",
	"Opt", // Alt
]

ActualKeyNamesWindows: [
	"Win",
]

DefinableKeyNames: [
	"Hyper",
	"Primary",
	"Secondary",
	"Pinky",
	"Thumb",

	"Super", // Win, Cmd, Meta
	"Alt",   // Opt

	for keyIndex, keyName in ActualKeyNamesUniversal {
		keyName
	},

]
