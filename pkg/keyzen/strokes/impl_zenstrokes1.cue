package strokes

Strokes: "\(thisStrokes.Name)": thisStrokes

let thisStrokes = #Strokes & {
	Name: "ZenStrokes1"

	StrokeCmdDefsMap: {
		"CursorMoveToLineForward": [["down"], ["hyper+k"]] // down
		"CursorMoveToLineBackward": [["up"], ["hyper+i"]] // up
		"CursorMoveToCharForward": [["right"], ["hyper+l"]] // right
		"CursorMoveToCharBackward": [["left"], ["hyper+j"]] // left
		"CursorMoveToSubwordForward": [["thumb+right"]] // subword right
		"CursorMoveToSubwordBackward": [["thumb+left"]] // subword left
		"CursorMoveToWordForward": [["pinky+right"], ["hyper+o"]] // word right
		"CursorMoveToWordBackward": [["pinky+left"], ["hyper+u"]] // word left
		"CursorMoveToLineEnd": [["end"], ["hyper+;"], ["pinky+thumb+right"]] // line end
		"CursorMoveToLineBegin": [["home"], ["hyper+h"], ["pinky+thumb+left"]] // line begin
		"CursorMoveToPageForward": [["pagedown"], ["hyper+h"]] // page down
		"CursorMoveToPageBackward": [["pageup"], ["hyper+y"]] // page up
		"CursorMoveToTextEnd": [["pinky+end"], ["hyper+b"]] // file bottom
		"CursorMoveToTextBegin": [["pinky+home"], ["hyper+t"]] // file top

		"CursorMoveToLineForwardSelect": [["shift+down"], ["hyper+shift+k"]] // select down
		"CursorMoveToLineBackwardSelect": [["shift+up"], ["hyper+shift+i"]] // select up
		"CursorMoveToCharForwardSelect": [["shift+right"], ["hyper+shift+l"]] // select right
		"CursorMoveToCharBackwardSelect": [["shift+left"], ["hyper+shift+j"]] // select left
		"CursorMoveToSubwordForwardSelect": [["thumb+shift+right"]] // select subword right
		"CursorMoveToSubwordBackwardSelect": [["thumb+shift+left"]] // select subword left
		"CursorMoveToWordForwardSelect": [["pinky+shift+right"], ["hyper+shift+o"]] // select word right
		"CursorMoveToWordBackwardSelect": [["pinky+shift+left"], ["hyper+shift+u"]] // select word left
		"CursorMoveToLineEndSelect": [["shift+end"], ["hyper+shift+]"], ["pinky+thumb+shift+right"]] // select line end
		"CursorMoveToLineBeginSelect": [["shift+home"], ["hyper+shift+["], ["pinky+thumb+shift+left"]] // select line begin
		"CursorMoveToPageForwardSelect": [["shift+pagedown"], ["hyper+shift+h"]] // select page down
		"CursorMoveToPageBackwardSelect": [["shift+pageup"], ["hyper+shift+y"]] // select page up
		"CursorMoveToTextEndSelect": [["pinky+shift+end"], ["hyper+shift+b"]] // select file bottom
		"CursorMoveToTextBeginSelect": [["pinky+shift+home"], ["hyper+shift+t"]] // select file top

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
