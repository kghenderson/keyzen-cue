package keys

Keys: KeyMap: {
	for defKeyIndex, defKeyName in Keys.definableKeyNamesList {
		//	Keys:
		// DefinableKeyMap:
		"\(defKeyName)": {
			Index: defKeyIndex
			//			IsCompound:  Keys.compoundKeys["\(defKeyName)"] != _|_
			IsLogical:   Keys.logicalKeyNamesLookup["\(defKeyName)"] != _|_
			IsDefinable: Keys.definableKeyNamesLookup["\(defKeyName)"] != _|_
			IsModifier:  Keys.modifierKeys["\(defKeyName)"] != _|_
			IsExpansion: Keys.expansionKeys["\(defKeyName)"] != _|_

			// including definable because non-definable keys, like Win, might need included/mapped as well

			// Note that for the bindings, it's a unique key that matters,
			// the index forces the key to be unique and but is more useful than just being 'true'
			// because it allows local sorting of these keys
			//if

			if IsExpansion {
				Bindings: Linux: {for _, rk in Keys.expansionKeys["\(defKeyName)"].Linux {"\(rk)": Keys.definableKeyNamesLookup["\(rk)"]}}
				Bindings: Mac: {for _, rk in Keys.expansionKeys["\(defKeyName)"].Mac {"\(rk)": Keys.definableKeyNamesLookup["\(rk)"]}}
				Bindings: Mac2: {for _, rk in Keys.expansionKeys["\(defKeyName)"].Mac2 {"\(rk)": Keys.definableKeyNamesLookup["\(rk)"]}}
				Bindings: Windows: {for _, rk in Keys.expansionKeys["\(defKeyName)"].Windows {"\(rk)": Keys.definableKeyNamesLookup["\(rk)"]}}
			}

			if !IsExpansion {
				Bindings: Linux: {"\(defKeyName)": defKeyIndex}
				Bindings: Mac: {"\(defKeyName)": defKeyIndex}
				Bindings: Mac2: {"\(defKeyName)": defKeyIndex}
				Bindings: Windows: {"\(defKeyName)": defKeyIndex}
			}

		}
	}
}
