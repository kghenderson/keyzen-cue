package keyzen

import (
	"github.com/kghenderson/keyzen/commands"
	"github.com/kghenderson/keyzen/editors"
	// "github.com/kghenderson/keyzen/keys"
	"github.com/kghenderson/keyzen/strokes"
)

KeyZen: {
	Commands: commands.Commands
	Editors:  editors.Editors
	// Keys:     keys._
	Strokes: strokes.Strokes
}
