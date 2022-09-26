package strokes

Strokes: "\(thisStrokes.Name)": thisStrokes

let thisStrokes = #Strokes & {
	Name: "ZenStrokes1"

	StrokesMap: {
		"CursorMoveToCharBackward": [["left"], ["hyper+j"]]
		"CursorMoveToCharBackwardSelect": [["shift+left"], ["hyper+shift+j"]]
		"CursorMoveToCharForward": [["right"]]
		"CursorMoveToCharForwardSelect": [["shift+right"]]
		"CursorMoveToLineBackward": [["up"], ["hyper+i"]]
		"CursorMoveToLineBackwardSelect": [["shift+up"], ["hyper+shift+i"]]
		"CursorMoveToLineBegin": [["home"], ["hyper+u"]]
		"CursorMoveToLineBeginSelect": [["shift+home"], ["hyper+shift+u"]]
		"CursorMoveToLineEnd": [["end"], ["hyper+o"]]
		"CursorMoveToLineEndSelect": [["shift+end"], ["hyper+shift+o"]]
		"CursorMoveToLineForward": [["down"]]
		"CursorMoveToLineForwardSelect": [["shift+down"]]
		"CursorMoveToPageBackward": [["pageup"],["hyper+y"]]
		"CursorMoveToPageBackwardSelect": [["shift+pageup"],["hyper+shift+y"]]
		"CursorMoveToPageForward": [["pagedown"],["hyper+shift+h"]]
		"CursorMoveToPageForwardSelect": [["shift+pagedown"],["hyper+shift+h"]]
		"CursorMoveToSubwordBackward": [["thumb+left"]]
		"CursorMoveToSubwordBackwardSelect": [["thumb+shift+left"]]
		"CursorMoveToSubwordForward": [["thumb+right"]]
		"CursorMoveToSubwordForwardSelect": [["thumb+shift+right"]]
		"CursorMoveToTextBegin": [["pinky+home"]]
		"CursorMoveToTextBeginSelect": [["pinky+shift+home"]]
		"CursorMoveToTextEnd": [["pinky+end"]]
		"CursorMoveToTextEndSelect": [["pinky+shift+end"]]
		"CursorMoveToWordBackward": [["pinky+left"]]
		"CursorMoveToWordBackwardSelect": [["pinky+shift+left"]]
		"CursorMoveToWordForward": [["pinky+right"]]
		"CursorMoveToWordForwardSelect": [["pinky+shift+right"]]
		"CursorMultiCloneAbove": [["thumb+shift+up"]]
		"CursorMultiCloneBelow": [["thumb+shift+down"]]
		//  "CursorMultiCloneOnLineEnds": [[""]
		//  "CursorSelectAll": [[""]
		//  "CursorSelectionContract": [["pinky+shift+"]
		//  "CursorSelectionExpand": [["pinky+shift+"]
		"EditNodeDelete": [["pinky+shift+."]]
		"EditNodeInsertAboveParent": [["pinky+shift+y"]]
		"EditNodeInsertAboveSibling": [["pinky+shift+u"]]
		"EditNodeInsertBelowChild": [["pinky+shift+n"]]
		"EditNodeInsertBelowSibling": [["pinky+shift+m"]]
		"EditNodeInsertDuplicate": [["pinky+shift+d"]]
		"EditNodeJoin": [["pinky+shift+o"]]
		"EditNodeMoveDown": [["pinky+shift+k"]]
		"EditNodeMoveIn": [["pinky+shift+l"]]
		"EditNodeMoveOut": [["pinky+shift+j"]]
		"EditNodeMoveUp": [["pinky+shift+i"]]
		"EditNodeRename": [["pinky+t"]]
		"EditNodeSplit": [["pinky+enter"]]
	}

}
