package keyzen

import (
	// "encoding/yaml"
	"text/template"
	"tool/cli"
	// "tool/file"

	"github.com/kghenderson/keyzen"
)

command: tangle_sublimetext: {
	args: {
		editorName:  "SublimeText"
		strokesName: "ZenStrokes1"
		fileName:    "_sublime_strokes.txt"
	}

	do: {
		selectedSource: {
			editorName:  args.editorName
			strokesName: args.strokesName
			commands:    keyzen.KeyZen.Commands
			editor:      keyzen.KeyZen.Editors["\(editorName)"]
			strokes:     keyzen.KeyZen.Strokes["\(strokesName)"]
		}
		//  echoSelectedSource: cli.Print & {text: yaml.Marshal(selectedSource)}

		templateText: {
			text: template.Execute(sublimeKeymapTemplate, selectedSource)
		}
		echoTemplateText: cli.Print & {text: templateText.text}

		// createFile: file.Create & {
		//  $after:   getText
		//  filename: args.fileName
		//  contents: getText.text
		// }

		doneMsg: "done tangling: " + args.editorName + ", " + args.strokesName
	}

	// done: {
	//  $after: do
	//  print:  cli.Print & {
	//   text: do.doneMsg
	//  }
	// }
}

// language=gotemplate
sublimeKeymapTemplate: ###"""
	{{- $strokesName := .strokesName }}
	{{- $cmdNames := .commands.CommandNames }}
	{{- $cmdDetails := .commands.CommandDetailsMap }}
	{{- $edCmdDetails := .editor.EditorCommandNameMap }}
	{{- $strokeDetails := .strokes.StrokesMap }}
	// {{$strokesName}} for {{.editorName}}
	{{- range $cmdIdx, $cmdName := $cmdNames }}
	{{- $cmd := index $cmdDetails $cmdName }}
	{{- $strokes := index $strokeDetails $cmdName }}
	{{- $subl := index $edCmdDetails $cmdName }}
	{{- if $subl }}
	{{- $sublCmd := $subl.command }}
	{{- $sublArgs := $subl.args }}
	{{- $sublArgsText := $subl.argsText }}
	{{- range $comboIdx, $combo := $strokes }}
	{{- range $pressIdx, $presses := $combo }}
	{ "keys": ["{{$presses}}"], "command": "{{$sublCmd}}"
	{{- if $sublArgs}}, "args": {{$sublArgsText}}{{end}}
	{{- " }  // "}}{{$cmdName}}
	{{- end }}{{/* range $presses  */}}
	{{- end }}{{/* range $strokes  */}}
	{{- end }}{{/* if $subl  */}}
	{{- end }}{{/* range $cmdNames */}}
	"""###
