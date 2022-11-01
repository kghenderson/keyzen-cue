package intellij

import (
	"github.com/kghenderson/keyzen/keys"
)

#SubstituteKey: [keyName=keys.#KeyName]: {
	Linux:   string
	Mac:     string
	Mac2:    string
	Windows: string
}

// SubstituteKey: {
// 	"": ""
// }

// keynames:
EditorKeys: {
	for keyName, keyDef in keys.Keys.KeyMap {
		"\(keyName)": true
	}
}
