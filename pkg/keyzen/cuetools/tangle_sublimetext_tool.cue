package keyzen

import (
	"encoding/yaml"
	"list"
	"strings"
	"text/template"
	"tool/cli"
	"tool/file"

	"github.com/kghenderson/keyzen"
)

command: tangle_sublimetext: {
	args: {
		editorName:   "SublimeText"
		strokesName:  "ZenStrokes1"
		platformName: "PC"
		fileName:     "_sublime_strokes.txt"
	}

	do: {
		buildSource: {
			source: {
				EditorName:   args.editorName
				StrokesName:  args.strokesName
				PlatformName: args.platformName
				let editorCmds = keyzen.KeyZen.Editors["\(EditorName)"].EditorCommandNameMap

				//    debugEditorCmds: editorCmds
				//    debugCommandNames: keyzen.KeyZen.Commands.CommandNames
				// debugStrokes:       keyzen.KeyZen.Strokes["\(strokesName)"]
				// debugStrokeCmdsMap: keyzen.KeyZen.Strokes["\(strokesName)"].StrokesMap
				// debugBindings: keyzen.KeyZen.Strokes["\(strokesName)"].StrokesMap.Bindings[platformName]
				CommandBindings: [
					for cmdIdx, cmdKey in keyzen.KeyZen.Commands.CommandNames {
						let strokeDefs = keyzen.KeyZen.Strokes["\(StrokesName)"].StrokesMap["\(cmdKey)"]

						// not every editor implements every command
						let edCmd = editorCmds["\(cmdKey)"]
						if edCmd != _|_ && strokeDefs != _|_ {
							CmdName: "\(cmdKey)"

							let edCmdText = "\"command\": \"" + edCmd.command + "\""

							let edCmdArgs = edCmd.args

							//        debugEditorCmdArgs: edCmdArgs
							EditorCmdText: string
							if edCmdArgs == _|_ {EditorCmdText: edCmdText}
							if edCmdArgs != _|_ {EditorCmdText: edCmdText + ", \"args\": " + edCmd.argsText}

							Bindings: [
								for _, strokeDef in strokeDefs {
									let bindingMap = strokeDef.Bindings["\(PlatformName)"]
									let bindingIds = [ for k, v in bindingMap {name: k, idx: v}]
									let bindingIdsSorted = list.Sort(bindingIds, {x: {}, y: {}, less: x.idx < y.idx})
									let bindingKeys = [ for _, kv in bindingIdsSorted {kv.name}]
									let bindingText = strings.Join(bindingKeys, "+")
									"\(strokeDef.DefText)": bindingText
								},
							]

						}
					},
				]
			}
		}
		//  debugSourceCli: cli.Print & {text: yaml.Marshal(buildSource.source)}
		debugSourceFile: file.Create & {filename: "_src.yaml", contents: yaml.Marshal(buildSource.source)}

		genText: {
			$after: buildSource
			text:   template.Execute(sublimeKeymapTemplate, buildSource.source)
		}
		// debugGenText: cli.Print & {text: genText.text}

		createFile: file.Create & {
			$after:   genText
			filename: args.fileName
			contents: genText.text
		}

		doneMsg: "done tangling: " + args.editorName + ", " + args.strokesName
	}

	done: {
		$after: do
		print:  cli.Print & {
			text: do.doneMsg
		}
	}
}
//

// language=gotemplate
sublimeKeymapTemplate: ###"""
	// {{.StrokesName}} for {{.EditorName}} on {{.PlatformName}}
	{{- range $cmdIdx, $cmd := .CommandBindings }}
	{{- $cmdName := $cmd.CmdName }}
	{{- $editorCmdText := $cmd.EditorCmdText }}
	{{- range $strokeDefName, $strokeBinds := $cmd.Bindings }}
	{{- $bindName := "<temp>"}}
	{ "keys": ["{{$bindName}}"] }: {{$editorCmdText}} // {{$cmdName}}: {{$strokeDefName}}
	
	{{$cmd}}
	{{- end }}{{/* range CommandBindings */}}
	{{- end }}{{/* range CommandBindings */}}
	"""###

//// language=gotemplate
//sublimeKeymapTemplate: ###"""
//     {{- $strokesName := .strokesName }}
//     {{- $cmdNames := .CommandNames }}
//     {{-/* $cmdDetails := .commands.CommandDetailsMap */}}
//     {{- $editorCmds := .editor.EditorCommandNameMap }}
//     {{- $strokeCmds := Strokes }}
//     // {{$strokesName}} for {{.editorName}}
//     {{- $editorCmd := index $editorCmds $cmdName }}
//     {{- $strokeCmd := index $strokeCmds $cmdName }}
//{{/* {{- $subl := index $edCmdDetails $cmdName }}*/}}
//{{/* {{- if $subl }}*/}}
//     {{- $sublCmd := $subl.command }}
//     {{- $sublArgs := $subl.args }}
//     {{- $sublArgsText := $subl.argsText }}
//     {{- range $comboIdx, $combo := $strokes }}
//     {{- range $pressIdx, $presses := $combo }}
//     { "keys": ["{{$presses}}"], "command": "{{$sublCmd}}"
//     {{- if $sublArgs}}, "args": {{$sublArgsText}}{{end}}
//     {{- " }  // "}}{{$cmdName}}
//     {{- end }}{{/* range $presses  */}}
//     {{- end }}{{/* range $strokes  */}}
//{{/* {{- end }}*/}}{{/* if $subl  */}}
//     {{- end }}{{/* range $cmdNames */}}
//     """###
