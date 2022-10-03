package strokes

Strokes: "\(thisStrokes.Name)": thisStrokes

let thisStrokes = #Strokes & {
	Name: "ZenStrokes1"

	StrokeCmdDefsMap: {
		"CursorMoveToCharBackward": [["left"], ["hyper+j"]]
		"CursorMoveToCharBackwardSelect": [["shift+left"], ["hyper+shift+j"]]
		"CursorMoveToCharForward": [["right"], ["hyper+l"]]
		"CursorMoveToCharForwardSelect": [["shift+right"], ["hyper+shift+l"]]
		"CursorMoveToLineBackward": [["up"], ["hyper+i"]]
		"CursorMoveToLineBackwardSelect": [["shift+up"], ["hyper+shift+i"]]
		"CursorMoveToLineBegin": [["home"], ["hyper+h"], ["pinky+thumb+left"]] //, ["hyper+u"]
		"CursorMoveToLineBeginSelect": [["shift+home"], ["hyper+shift+h"], ["pinky+thumb+shift+left"]] //, ["hyper+shift+u"]
		"CursorMoveToLineEnd": [["end"], ["hyper+;"], ["pinky+thumb+right"]] //, ["hyper+o"]
		"CursorMoveToLineEndSelect": [["shift+end"], ["hyper+shift+;"], ["pinky+thumb+shift+right"]] // , ["hyper+shift+o"]
		"CursorMoveToLineForward": [["down"], ["hyper+k"]]
		"CursorMoveToLineForwardSelect": [["shift+down"], ["hyper+shift+k"]]
		"CursorMoveToPageBackward": [["pageup"], ["hyper+y"]]
		"CursorMoveToPageBackwardSelect": [["shift+pageup"], ["hyper+shift+y"]]
		"CursorMoveToPageForward": [["pagedown"], ["hyper+h"]]
		"CursorMoveToPageForwardSelect": [["shift+pagedown"], ["hyper+shift+h"]]
		"CursorMoveToSubwordBackward": [["thumb+left"]]
		"CursorMoveToSubwordBackwardSelect": [["thumb+shift+left"]]
		"CursorMoveToSubwordForward": [["thumb+right"]]
		"CursorMoveToSubwordForwardSelect": [["thumb+shift+right"]]
		"CursorMoveToTextBegin": [["pinky+home"], ["hyper+y"]]
		"CursorMoveToTextBeginSelect": [["pinky+shift+home"], ["hyper+shift+y"]]
		"CursorMoveToTextEnd": [["pinky+end"], ["hyper+n"]]
		"CursorMoveToTextEndSelect": [["pinky+shift+end"], ["hyper+shift+n"]]
		"CursorMoveToWordBackward": [["pinky+left"], ["hyper+u"]]
		"CursorMoveToWordBackwardSelect": [["pinky+shift+left"], ["hyper+shift+u"]]
		"CursorMoveToWordForward": [["pinky+right"], ["hyper+o"]]
		"CursorMoveToWordForwardSelect": [["pinky+shift+right"], ["hyper+shift+o"]]
		"CursorMultiCloneAbove": [["thumb+shift+up"]]
		"CursorMultiCloneBelow": [["thumb+shift+down"]]
		//  "CursorMultiCloneOnLineEnds": [[""]
		//  "CursorSelectAll": [[""]
		//  "CursorSelectionContract": [["pinky+shift+"]
		//  "CursorSelectionExpand": [["pinky+shift+"]
		"EditNodeDelete": [["pinky+shift+."], ["pinky+shift+x"]]
		"EditNodeInsertAboveParent": [["pinky+shift+y"]]
		"EditNodeInsertAboveSibling": [["pinky+shift+u"]]
		"EditNodeInsertBelowChild": [["pinky+shift+n"]]
		"EditNodeInsertBelowSibling": [["pinky+shift+m"]]
		"EditNodeInsertDuplicate": [["pinky+d"]]
		"EditNodeJoin": [["pinky+shift+o"]]
		"EditNodeMoveDown": [["pinky+shift+k"]]
		"EditNodeMoveIn": [["pinky+shift+l"]]
		"EditNodeMoveOut": [["pinky+shift+j"]]
		"EditNodeMoveUp": [["pinky+shift+i"]]
		"EditNodeRename": [["pinky+t"]]
		"EditNodeSplit": [["pinky+enter"]]
	}

}
