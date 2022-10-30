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

JetbrainsKeymapTemplateName: "jetbrains_keymap.xml.tmpl"

command: tangle_jetbrains: {
	templateName: JetbrainsKeymapTemplateName

	args: {
		editorName:   "Jetbrains"
		strokesName:  "ZenStrokes1"
		platformName: "Linux"
		fileName:     "_" + strings.ToLower(editorName) + "_strokes.xml"
	}
	argsDebug: cli.Print & {text: yaml.Marshal(args)}

	do: {
		buildSource: {
			source: {
				EditorName:   args.editorName
				StrokesName:  args.strokesName
				PlatformName: args.platformName
				KeymapName:   "Keyzen (" + PlatformName + ")"
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
					if keyzen.KeyZen.Strokes[StrokesName].StrokesMap[cmdName] != _|_ &&
						editorCmds[cmdName] != _|_ {
						let cmdDetails = keyzen.KeyZen.Commands.CommandDetailsMap[cmdName]

						let strokeDefs = keyzen.KeyZen.Strokes[StrokesName].StrokesMap[cmdName]
						let editorCmd = editorCmds[cmdName]

						//      let editorCmdArgs = editorCmd.args
						//      let editorCmdText = editorCmd.argsText
						//      let editorCmdTextCommand = "\"command\": \"" + editorCmd.command + "\""
						let editorLabelText = editorCmd.Label
						let editorActionId = editorCmd.ActionId

						CmdName:      cmdName
						CmdHumanName: cmdDetails["Human"]

						//      EditorCmdText: string
						//      if editorCmdText == _|_ {EditorCmdText: editorCmdTextCommand}
						//      if editorCmdText != _|_ {EditorCmdText: editorCmdTextCommand + ", \"args\": " + editorCmd.argsText}
						EditorLabelText: editorLabelText
						EditorActionId:  editorActionId

						BindingsCount: len(Bindings)
						if BindingsCount == 0 {{BindingsMax: 0}}
						if BindingsCount > 0 {{BindingsMax: BindingsCount - 1}}
						Bindings: [
							for _, strokeDef in strokeDefs {
								let bindingMap = strokeDef.Bindings["\(PlatformName)"]
								let bindingIds = [ for k, v in bindingMap {name: k, idx: v}]
								let bindingIdsSorted = list.Sort(bindingIds, {x: {}, y: {}, less: x.idx < y.idx})
								let bindingKeys = [ for _, kv in bindingIdsSorted {kv.name}]
								let bindingText = strings.Join(bindingKeys, " ")
								"DefText":  "\(strokeDef.DefText)"
								"BindText": bindingText
							},
						]
					},
				]
			}
		}
		// debugSourceCli: cli.Print & {text: yaml.Marshal(buildSource.source)}
		debugSourceFile: file.Create & {filename: "_tangle_jetbrains_src.yaml", contents: yaml.Marshal(buildSource.source)}

		loadTemplate: {
			readFile:     file.Read & {filename: templateName, contents: string}
			templateText: readFile.contents
			// templateTextDebug: cli.Print & {text: "templateText: " + templateText}
		}

		genText: {
			resultText: template.Execute(loadTemplate.templateText, buildSource.source)
			// resultTextDebug: cli.Print & {text: resultText}
		}

		writeFile: {
			doWrite: file.Create & {filename: args.fileName, contents: genText.resultText}
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
keymapTemplate: ###"""
	// {{.StrokesName}} for {{.EditorName}} on {{.PlatformName}}
	"""###

//
// [
//     // {{.StrokesName}} for {{.EditorName}} on {{.PlatformName}}
// {{- $cmdMax := .CommandBindingsMax }}
// {{- $lastCmdName := "" }}
// {{- range $cmdIdx, $cmd := .CommandBindings }}
// {{- $cmdName := $cmd.CmdName }}
// {{- $cmdHumanName := $cmd.CmdHumanName }}
// {{- $editorCmdText := $cmd.EditorCmdText }}
// {{- $bindsMax := $cmd.BindingsMax }}
// {{- if ne $cmdName $lastCmdName }}
//
//     // {{$cmdHumanName}}  [{{$cmdName}}]
// {{- end}}
// {{- range $bindIdx, $bind := $cmd.Bindings }}
// {{- $defText := $bind.DefText}}
// {{- $bindText := $bind.BindText}}
//     { "keys": ["{{$bindText}}"], {{$editorCmdText}} }
//     {{- if not (and (eq $cmdIdx $cmdMax) (eq $bindIdx $bindsMax))}}, {{end}} // "{{$defText}}"
// {{- end }}{{/* range Bindings */}}
// {{- $lastCmdName = $cmdName }}
// {{- end }}{{/* range CommandBindings */}}
// ]
//
// """###

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
