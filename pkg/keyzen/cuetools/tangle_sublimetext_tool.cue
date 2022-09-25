package keyzen

import (
	"text/template"
	"tool/cli"
	"tool/file"

	//"github.com/kghenderson/keyzen"
)

command: tangle_sublimetext: {
	args: {
		editor:   "SublimeText"
		fileName: "_sublime_strokes.txt"
	}

	do: {

		getText: {
			text: template.Execute(sublimeKeymapTemplate, args.editor)
		}

		writeFile: file.Create & {
			$after:   getText
			filename: args.fileName
			contents: getText.text
		}

		doneMsg: "done tangling sublimetext"
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
	{{- $name := "test" }}
	hello, {{$name}}

	"""###
