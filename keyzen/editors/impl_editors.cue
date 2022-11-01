package editors

import (
	"github.com/kghenderson/keyzen/editors/intellij"
	"github.com/kghenderson/keyzen/editors/sublime"
	"github.com/kghenderson/keyzen/editors/vscode"
)

//subl "github.com/kghenderson/keyzen/editors/sublimetext"
// vscode "github.com/kghenderson/keyzen/editors/visualstudiocode"

Editors: {
	"\(intellij.Name)": intellij
	"\(sublime.Name)":  sublime
	"\(vscode.Name)":   vscode
	//"\(subl.Editor.Name)":   subl.Editor
	//"\(vscode.Editor.Name)": vscode.Editor
}
