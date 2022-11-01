package keys

#KeyIndex: int
#KeyName:  string

#KeyMap: [keyName=#KeyName]: #KeyDef & {Name: keyName}

// Keys is the wrapper collection of package objects
#Keys: {
	KeyMap: #KeyMap

	logicalKeyNamesList: [...#KeyName]
	logicalKeyNamesLookup: [keyName=#KeyName]: #KeyIndex

	definableKeyNamesList: [...#KeyName]
	definableKeyNamesLookup: [keyName=#KeyName]: #KeyIndex
	DefinableKeyMap: #KeyMap
	//                                 keyNamesLookup: [keyName=#KeyName]: #KeyIndex

	modifierKeys: [keyName=#KeyName]: bool

	expansionKeys: [keyName=#KeyName]: {...}

	zzCheckAllKeyNamesInKeysMap?: [keyName=#KeyName]: bool
	zzCheckAllMapKeysInKeyNames?: [keyName=#KeyName]: bool

	//	...
}

#KeyDef: {
	Index: #KeyIndex
	Name:  #KeyName
	Bindings: {
		Linux: [keyName=#KeyName]:   #KeyIndex
		Mac: [keyName=#KeyName]:     #KeyIndex
		Mac2: [keyName=#KeyName]:    #KeyIndex
		Windows: [keyName=#KeyName]: #KeyIndex
	}
	IsLogical:   bool
	IsDefinable: bool
	IsModifier:  bool
	IsExpansion: bool
	//	...
}
