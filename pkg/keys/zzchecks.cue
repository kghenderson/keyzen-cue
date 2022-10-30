package keys

// _zzCheckAllDefinableMapKeysInKeyNames
_zzCheckAllDefinableKeyNamesInKeysMap: {
	for _, keyName in DefinableKeyNames {
		"\(keyName)": true & DefinableKeyMap["\(keyName)"] != _|_
	}
}

// _zzCheckAllDefinableMapKeysInKeyNames
_zzCheckAllDefinableMapKeysInKeyNames: {
	for keyName, keyDefs in DefinableKeyMap {
		"\(keyName)": true & definableKeyIndexLookup["\(keyName)"] != _|_
	}
}
