package keys

for defKeyIndex, defKeyName in Keys.KeyNames {
	Keys: KeyMap: "\(defKeyName)": {
		Index:      defKeyIndex
		IsModifier: Keys.modifierKeys["\(defKeyName)"] != _|_
		IsRelative: Keys.relativeKeys["\(defKeyName)"] != _|_

		if IsRelative {
			Bindings: PC: {for _, rk in Keys.relativeKeys["\(defKeyName)"].PC {"\(rk)": Keys.keyIndexLookup["\(rk)"]}}
			Bindings: Mac: {for _, rk in Keys.relativeKeys["\(defKeyName)"].Mac {"\(rk)": Keys.keyIndexLookup["\(rk)"]}}
			Bindings: Mac2: {for _, rk in Keys.relativeKeys["\(defKeyName)"].Mac2 {"\(rk)": Keys.keyIndexLookup["\(rk)"]}}
		}

		if !IsRelative {
			Bindings: PC: {"\(defKeyName)": defKeyIndex}
			Bindings: Mac: {"\(defKeyName)": defKeyIndex}
			Bindings: Mac2: {"\(defKeyName)": defKeyIndex}
		}
	}
}
//Keys: Keymap:

// Keys: KeyMap: {
//  "pgup": {}
//
// }
