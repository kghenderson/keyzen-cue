package keys

Keys: definableKeyNamesLookup: {
	for keyIndex, keyName in Keys.definableKeyNamesList {
		"\(keyName)": keyIndex
	}
}

Keys: definableKeyNamesList: [
	"Hyper",
	"Primary",
	"Secondary",
	"Pinky",
	"Thumb",

	// "Super", // Win, Cmd, Meta
	// "Alt",   // Opt

	// include logical
	for keyIndex, keyName in Keys.logicalKeyNamesList {
		keyName
	},
]
