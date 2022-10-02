package keyzen

import (
	"encoding/yaml"
	"list"
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
				editorName:   args.editorName
				strokesName:  args.strokesName
				platformName: args.platformName
				commandNames: keyzen.KeyZen.Commands.CommandNames
				editor:       keyzen.KeyZen.Editors["\(editorName)"]
				// strokes:       keyzen.KeyZen.Strokes["\(strokesName)"]
				strokeCmdsMap: keyzen.KeyZen.Strokes["\(strokesName)"].StrokesMap
				//    bindings: keyzen.KeyZen.Strokes["\(strokesName)"].StrokesMap.Bindings[platformName]
				platformKeys: {
					for cmdKey, strokeDefs in strokeCmdsMap {
						"\(cmdKey)": [
							for _, strokeDef in strokeDefs {
								let bindingMap = strokeDef.Bindings["\(platformName)"]

								//        let bindingList = [ for k, v in bindingMap {{"\(k)": v}}]
								let bindingIds = [ for k, v in bindingMap {name: k, idx: v}]

								//        let bindingIdsSorted = list.SortStrings(bindingIds)
								let bindingIdsSorted = list.Sort(bindingIds, {x: {}, y: {}, less: x.idx < y.idx})
								//        let x = list.Take(bindingList, 1)

								map: bindingMap
								//             list:   bindingList
								idlist: bindingIds
								//             first:  x
								idListSorted: bindingIdsSorted
								//           let sortedList = list.Sort(bindingList, {less: true})
								//           slist: sortedList

								//        mapSorted: bindingMapSorted
							},
						]
					}
				}
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
