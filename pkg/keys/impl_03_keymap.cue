package keys

for defKeyIndex, defKeyName in DefinableKeyNames {
	DefinableKeyMap: "\(defKeyName)": {
		Index:      defKeyIndex
		IsModifier: modifierKeys["\(defKeyName)"] != _|_
		IsRelative: relativeKeys["\(defKeyName)"] != _|_

		// Note that for the bindings, it's a unique key that matters,
		// the index forces the key to be unique and but is more useful than just being 'true'
		// because it allows local sorting of these keys

		if IsRelative {
			Bindings: Linux: {for _, rk in relativeKeys["\(defKeyName)"].Linux {"\(rk)": definableKeyIndexLookup["\(rk)"]}}
			Bindings: Mac: {for _, rk in relativeKeys["\(defKeyName)"].Mac {"\(rk)": definableKeyIndexLookup["\(rk)"]}}
			Bindings: Mac2: {for _, rk in relativeKeys["\(defKeyName)"].Mac2 {"\(rk)": definableKeyIndexLookup["\(rk)"]}}
			Bindings: Windows: {for _, rk in relativeKeys["\(defKeyName)"].Windows {"\(rk)": definableKeyIndexLookup["\(rk)"]}}
		}

		if !IsRelative {
			Bindings: Linux: {"\(defKeyName)": defKeyIndex}
			Bindings: Mac: {"\(defKeyName)": defKeyIndex}
			Bindings: Mac2: {"\(defKeyName)": defKeyIndex}
			Bindings: Windows: {"\(defKeyName)": defKeyIndex}
		}
	}
}
