package keys

for keyIndex, keyName in Keys.KeyNames {
	Keys: KeyMap: "\(keyName)": {
		Index:      keyIndex
		IsModifier: Keys.modifierKeys["\(keyName)"] != _|_
		IsRelative: Keys.relativeKeys["\(keyName)"] != _|_

		if IsRelative {
			OnPC: {for _, rk in Keys.relativeKeys["\(keyName)"].PC {"\(rk)": true}}
			OnMac: {for _, rk in Keys.relativeKeys["\(keyName)"].Mac {"\(rk)": true}}
			OnFMac: {for _, rk in Keys.relativeKeys["\(keyName)"].FMac {"\(rk)": true}}
		}

		if !IsRelative {
			OnPC: {"\(keyName)": true}
			OnMac: {"\(keyName)": true}
			OnFMac: {"\(keyName)": true}
		}
	}
}
//Keys: Keymap:

// Keys: KeyMap: {
//  "pgup": {}
//
// }
