package editors

import (
	jb "github.com/kghenderson/keyzen/editors/jetbrains"
	subl "github.com/kghenderson/keyzen/editors/sublimetext"
	vscode "github.com/kghenderson/keyzen/editors/visualstudiocode"
)

Editors: {
	"\(jb.Editor.Name)":     jb.Editor
	"\(subl.Editor.Name)":   subl.Editor
	"\(vscode.Editor.Name)": vscode.Editor
}
