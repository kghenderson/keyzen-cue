package editors

import (
	"github.com/kghenderson/keyzen/editors/jetbrains"
)

//subl "github.com/kghenderson/keyzen/editors/sublimetext"
// vscode "github.com/kghenderson/keyzen/editors/visualstudiocode"

Editors: {
	"\(jetbrains.Name)": jetbrains
	//"\(subl.Editor.Name)":   subl.Editor
	//"\(vscode.Editor.Name)": vscode.Editor
}
