package strokes

Strokes: "\(thisStrokes.Name)": thisStrokes

let thisStrokes = #Strokes & {
	Name: "ZenStrokes1"

	StrokeCmdDefsMap: {
		"CursorMoveToCharBackward": [["left"], ["hyper+j"]] // left
		"CursorMoveToCharBackwardSelect": [["shift+left"], ["hyper+shift+j"]] // select left
		"CursorMoveToCharForward": [["right"], ["hyper+l"]] // right
		"CursorMoveToCharForwardSelect": [["shift+right"], ["hyper+shift+l"]] // select right
		"CursorMoveToLineBackward": [["up"], ["hyper+i"]] // up
		"CursorMoveToLineBackwardSelect": [["shift+up"], ["hyper+shift+i"]] // select up
		"CursorMoveToLineBegin": [["home"], ["hyper+y"], ["pinky+thumb+left"]] // line begin
		"CursorMoveToLineBeginSelect": [["shift+home"], ["hyper+shift+y"], ["pinky+thumb+shift+left"]] // select line begin
		"CursorMoveToLineEnd": [["end"], ["hyper+p"], ["pinky+thumb+right"]] // line end
		"CursorMoveToLineEndSelect": [["shift+end"], ["hyper+shift+p"], ["pinky+thumb+shift+right"]] // select line end
		"CursorMoveToLineForward": [["down"], ["hyper+k"]] // down
		"CursorMoveToLineForwardSelect": [["shift+down"], ["hyper+shift+k"]] // select down
		"CursorMoveToPageBackward": [["pageup"], ["hyper+y"]] // page up
		"CursorMoveToPageBackwardSelect": [["shift+pageup"], ["hyper+shift+y"]] // select page up
		"CursorMoveToPageForward": [["pagedown"], ["hyper+h"]] // page down
		"CursorMoveToPageForwardSelect": [["shift+pagedown"], ["hyper+shift+h"]] // select page down
		"CursorMoveToSubwordBackward": [["thumb+left"]] // subword left
		"CursorMoveToSubwordBackwardSelect": [["thumb+shift+left"]] // select subword left
		"CursorMoveToSubwordForward": [["thumb+right"]] // subword right
		"CursorMoveToSubwordForwardSelect": [["thumb+shift+right"]] // select subword right
		"CursorMoveToTextBegin": [["pinky+home"], ["hyper+t"]] // file top
		"CursorMoveToTextBeginSelect": [["pinky+shift+home"], ["hyper+shift+t"]] // select file top
		"CursorMoveToTextEnd": [["pinky+end"], ["hyper+b"]] // file bottom
		"CursorMoveToTextEndSelect": [["pinky+shift+end"], ["hyper+shift+b"]] // select file bottom
		"CursorMoveToWordBackward": [["pinky+left"], ["hyper+u"]] // word left
		"CursorMoveToWordBackwardSelect": [["pinky+shift+left"], ["hyper+shift+u"]] // select word left
		"CursorMoveToWordForward": [["pinky+right"], ["hyper+o"]] // word right
		"CursorMoveToWordForwardSelect": [["pinky+shift+right"], ["hyper+shift+o"]] // select word right

		"CursorMultiCloneAbove": [["thumb+shift+up"]] // clone cursor up
		"CursorMultiCloneBelow": [["thumb+shift+down"]] // clone cursor down

		//  "CursorMultiCloneOnLineEnds": [[""]
		//  "CursorSelectAll": [[""]
		//  "CursorSelectionContract": [["pinky+shift+"]
		//  "CursorSelectionExpand": [["pinky+shift+"]
		"EditNodeMoveDown": [["pinky+shift+k"]]
		"EditNodeMoveUp": [["pinky+shift+i"]]
		"EditNodeMoveIn": [["pinky+shift+l"]]
		"EditNodeMoveOut": [["pinky+shift+j"]]

		"EditNodeInsertAboveSibling": [["pinky+shift+u"]]
		"EditNodeInsertBelowSibling": [["pinky+shift+n"]]
		"EditNodeInsertAboveParent": [["pinky+shift+y"]]
		"EditNodeInsertBelowChild": [["pinky+shift+m"]]
		"EditNodeInsertDuplicate": [["pinky+d"]]

		"EditNodeRename": [["pinky+t"]]
		"EditNodeDelete": [["pinky+shift+x"]]
		"EditNodeJoin": [["pinky+shift+o"]]
		"EditNodeSplit": [["pinky+enter"]]

		"GotoEditorSettings": [["pinky+,"]]

	}

}
