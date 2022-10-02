package keys

// Keys is the wrapper collection of package objects
#Keys: {
	KeyNames: [...#KeyName]
	KeyMap: #KeyMap
	//                                 keyNamesLookup: [keyName=#KeyName]: #KeyIndex

	modifierKeys?: [keyName=#KeyName]: bool
	relativeKeys?: [keyName=#KeyName]: {...}
	compoundKeys?: {...}
}

#KeyDef: {
	Index: #KeyIndex
	Name:  #KeyName
	OnPC: [keyName=#KeyName]:   bool
	OnMac: [keyName=#KeyName]:  bool
	OnFMac: [keyName=#KeyName]: bool
	IsModifier: bool
	IsRelative: bool
	...
}

#KeyMap: [keyName=#KeyName]: #KeyDef & {Name: keyName}

// #KeyMap:
//  "ctrl": {}
// "hyper": {}
// "shift":
//  "pinky": {}
// "thumb": {}

#KeyName:  string
#KeyIndex: int
