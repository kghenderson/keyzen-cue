package cue2

import (
	"text/template"
	"tool/cli"
	"tool/file"
)


command: doc: {
	outFileName: "_gen/CommandDoc.md"

	do: {
		outText: template.Execute(MdTmpl, Commands) 


		write: file.Create & {
		 	filename: outFileName
		 	contents: outText
		}

		outMsg: "done"
	}

	done: cli.Print & {
		text: do.outText
}

}

// language=gotemplate
let MdTmpl = ###"""
		# Commands
		{{/* header */}}
		{{  print "|" "CommandName" }}
		{{- print "|" "Human" }}
		{{- print "|" "Jetbrains" }}
		{{- print "|" "Bindings" }}
		{{- print "|" }}
		{{  print "|" "---" }}
		{{- print "|" "---" }}
		{{- print "|" "---" }}
		{{- print "|" "---" }}
		{{- print "|" }}
		{{- range $cmdIdx, $cmd := . }}
		{{ print "|" $cmd.Name}}
		{{- print "|" $cmd.Human }}
		{{- print "|" $cmd.JetbrainsCommand }}
		{{- print "|" }}
		{{- range $bindIdx, $bind := $cmd.Bindings }}
		{{- if lt 0 $bindIdx}},{{end}}"{{$bind}}"
		{{- /*print "|" $cmd.Bindings */}}
		{{- end }}
		{{- print "|" }}
		{{- end }}
		"""###
