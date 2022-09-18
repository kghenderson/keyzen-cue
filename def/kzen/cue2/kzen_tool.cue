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
	{{- $lastCategory := ""}}
	# Commands
	{{/* header */}}
	{{  print "|" "Cat" }}
	{{- print "|" "Human" }}
	{{- print "|" "Bindings" }}
	{{- print "|" "CommandName" }}
	{{- print "|" "JetbrainsName" }}
	{{- print "|" "SublimeTextName" }}
	{{- print "|" }}
	{{  print "|" "---" }}
	{{- print "|" "---" }}
	{{- print "|" "---" }}
	{{- print "|" "---" }}
	{{- print "|" "---" }}
	{{- print "|" "---" }}
	{{- print "|" }}
	{{- range $cmdIdx, $cmd := . }}
	{{- $thisCategory := $cmd.Category}}
	{{- if and (gt $cmdIdx 0) (ne $lastCategory $thisCategory) }}
	{{  print "|" "---" }}
	{{- print "|" "---" }}
	{{- print "|" "---" }}
	{{- print "|" "---" }}
	{{- print "|" "---" }}
	{{- print "|" "---" }}
	{{- print "|" }}
	{{- end }}{{/* if ne $lastCategory $thisCategory */}}
	{{ print "|" $cmd.Category }}
	{{- print "|" $cmd.Human }}
	{{- print "|" }}
	{{- if $cmd.Bindings}}
	{{- range $bindIdx, $bind := $cmd.Bindings }}
	{{- if gt $bindIdx 0}}<br />{{end}}"{{$bind}}"
	{{- /*print "|" $cmd.Bindings */}}
	{{- end }}{{/* range $cmd.Bindings */}}
	{{- else }}-
	{{- end }}{{/* $cmd.Bindings */}}
	{{- print "|" $cmd.Name}}
	{{- print "|" }}{{if $cmd.JetbrainsCommand}}{{$cmd.JetbrainsCommand}}{{else}}-{{end}}
	{{- print "|"}}{{if $cmd.SublimeTextCommand}}{{$cmd.SublimeTextCommand}}{{else}}-{{end}}
	{{- print "|" }}
	{{- $lastCategory = $thisCategory}}
	{{- end }}{{/* range .CommandList */}}
	"""###
