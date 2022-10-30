package keys

#KeyIndex: int
#KeyName:  string

// Keys is the wrapper collection of package objects
//#Keys: {
ActualKeyNames: [...#KeyName]

DefinableKeyNames: [...#KeyName]
DefinableKeyMap: #KeyMap
//                                 keyNamesLookup: [keyName=#KeyName]: #KeyIndex
definableKeyIndexLookup: [keyName=#KeyName]: #KeyIndex
modifierKeys?: [keyName=#KeyName]:           bool
relativeKeys?: [keyName=#KeyName]: {...}
compoundKeys?: {...}

zzCheckAllKeyNamesInKeysMap?: [keyName=#KeyName]: bool
zzCheckAllMapKeysInKeyNames?: [keyName=#KeyName]: bool
//}

#KeyDef: {
	Index: #KeyIndex
	Name:  #KeyName
	Bindings: {
		Linux: [keyName=#KeyName]:   #KeyIndex
		Mac: [keyName=#KeyName]:     #KeyIndex
		Mac2: [keyName=#KeyName]:    #KeyIndex
		Windows: [keyName=#KeyName]: #KeyIndex
	}
	IsModifier: bool
	IsRelative: bool
	...
}

#KeyMap: [keyName=#KeyName]: #KeyDef & {Name: keyName}
