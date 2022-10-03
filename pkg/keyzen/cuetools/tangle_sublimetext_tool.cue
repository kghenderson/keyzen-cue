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
				let cmdNames = keyzen.KeyZen.Commands.CommandNames

				//    debugEditorCmds: editorCmds
				//    debugCommandNames: keyzen.KeyZen.Commands.CommandNames
				// debugStrokes:       keyzen.KeyZen.Strokes["\(strokesName)"]
				// debugStrokeCmdsMap: keyzen.KeyZen.Strokes["\(strokesName)"].StrokesMap
				// debugBindings: keyzen.KeyZen.Strokes["\(strokesName)"].StrokesMap.Bindings[platformName]
				// not every editor implements every command
				CommandBindingsCount: len(CommandBindings)
				if CommandBindingsCount == 0 {{CommandBindingsMax: 0}}
				if CommandBindingsCount > 0 {{CommandBindingsMax: CommandBindingsCount - 1}}
				CommandBindings: [
					for cmdIdx, cmdName in cmdNames
					if keyzen.KeyZen.Strokes["\(StrokesName)"].StrokesMap["\(cmdName)"] != _|_ &&
						editorCmds["\(cmdName)"] != _|_ {
						let strokeDefs = keyzen.KeyZen.Strokes["\(StrokesName)"].StrokesMap["\(cmdName)"]
						let editorCmd = editorCmds["\(cmdName)"]
						let editorCmdArgs = editorCmd.args
						let editorCmdTextCommand = "\"command\": \"" + editorCmd.command + "\""

						CmdName: "\(cmdName)"

						EditorCmdText: string
						if editorCmdArgs == _|_ {EditorCmdText: editorCmdTextCommand}
						if editorCmdArgs != _|_ {EditorCmdText: editorCmdTextCommand + ", \"args\": " + editorCmd.argsText}

						BindingsCount: len(Bindings)
						if BindingsCount == 0 {{BindingsMax: 0}}
						if BindingsCount > 0 {{BindingsMax: BindingsCount - 1}}
						Bindings: [
							for _, strokeDef in strokeDefs {
								let bindingMap = strokeDef.Bindings["\(PlatformName)"]
								let bindingIds = [ for k, v in bindingMap {name: k, idx: v}]
								let bindingIdsSorted = list.Sort(bindingIds, {x: {}, y: {}, less: x.idx < y.idx})
								let bindingKeys = [ for _, kv in bindingIdsSorted {kv.name}]
								let bindingText = strings.Join(bindingKeys, "+")
								"DefText":  "\(strokeDef.DefText)"
								"BindText": bindingText
							},
						]

					},
				]
			}
		}
		// debugSourceCli: cli.Print & {text: yaml.Marshal(buildSource.source)}
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

		doneMsg: "done tangling: " + args.strokesName + " for " + args.editorName + " on " + args.platformName
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
	{{- $cmdMax := .CommandBindingsMax }}
	{{- range $cmdIdx, $cmd := .CommandBindings }}
	{{- $cmdName := $cmd.CmdName }}
	{{- $editorCmdText := $cmd.EditorCmdText }}
	{{- $bindsMax := $cmd.BindingsMax }}
	{{- range $bindIdx, $bind := $cmd.Bindings }}
	{{- $defText := $bind.DefText}}
	{{- $bindText := $bind.BindText}}
	    { "keys": ["{{$bindText}}"], {{$editorCmdText}} }
	    {{- if not (and (eq $cmdIdx $cmdMax) (eq $bindIdx $bindsMax))}}, {{end}} // {{$cmdName}}: "{{$defText}}"
	{{- end }}{{/* range Bindings */}}
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
