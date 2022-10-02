package keys

// zzCheckAllKeyNamesInKeysMap
Keys: zzCheckAllKeyNamesInKeysMap: {
	for _, keyName in Keys.KeyNames {
		"\(keyName)": true & Keys.KeyMap["\(keyName)"] != _|_
	}
}

// zzCheckAllMapKeysInKeyNames
Keys: zzCheckAllMapKeysInKeyNames: {
	for keyName, keyDefs in Keys.KeyMap {
		"\(keyName)": true & Keys.keyIndexLookup["\(keyName)"] != _|_
	}
}
