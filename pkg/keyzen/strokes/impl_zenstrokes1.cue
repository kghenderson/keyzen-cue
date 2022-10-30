package strokes

Strokes: "\(thisStrokes.Name)": thisStrokes

let thisStrokes = #Strokes & {
	Name: "ZenStrokes1"

	StrokeCmdDefsMap: {
		"CursorMoveToCharBackward": [["Left"], ["Hyper+J"]] // left
		"CursorMoveToCharBackwardSelect": [["Shift+Left"], ["Hyper+Shift+J"]] // select left
		"CursorMoveToCharForward": [["Right"], ["Hyper+L"]] // right
		"CursorMoveToCharForwardSelect": [["Shift+Right"], ["Hyper+Shift+L"]] // select right
		"CursorMoveToLineBackward": [["Up"], ["Hyper+I"]] // up
		"CursorMoveToLineBackwardSelect": [["Shift+Up"], ["Hyper+Shift+I"]] // select up
		"CursorMoveToLineBegin": [["Home"], ["Hyper+Y"], ["Pinky+Thumb+Left"]] // line begin
		"CursorMoveToLineBeginSelect": [["Shift+Home"], ["Hyper+Shift+Y"], ["Pinky+Thumb+Shift+Left"]] // select line begin
		"CursorMoveToLineEnd": [["End"], ["Hyper+P"], ["Pinky+Thumb+Right"]] // line end
		"CursorMoveToLineEndSelect": [["Shift+End"], ["Hyper+Shift+P"], ["Pinky+Thumb+Shift+Right"]] // select line end
		"CursorMoveToLineForward": [["Down"], ["Hyper+K"]] // down
		"CursorMoveToLineForwardSelect": [["Shift+Down"], ["Hyper+Shift+K"]] // select down
		"CursorMoveToPageBackward": [["PageUp"], ["Hyper+Y"]] // page up
		"CursorMoveToPageBackwardSelect": [["Shift+PageUp"], ["Hyper+Shift+Y"]] // select page up
		"CursorMoveToPageForward": [["PageDown"], ["Hyper+H"]] // page down
		"CursorMoveToPageForwardSelect": [["Shift+PageDown"], ["Hyper+Shift+H"]] // select page down
		"CursorMoveToSubwordBackward": [["Thumb+Left"]] // subword left
		"CursorMoveToSubwordBackwardSelect": [["Thumb+Shift+Left"]] // select subword left
		"CursorMoveToSubwordForward": [["Thumb+Right"]] // subword right
		"CursorMoveToSubwordForwardSelect": [["Thumb+Shift+Right"]] // select subword right
		"CursorMoveToTextBegin": [["Pinky+Home"], ["Hyper+T"]] // file top
		"CursorMoveToTextBeginSelect": [["Pinky+Shift+Home"], ["Hyper+Shift+T"]] // select file top
		"CursorMoveToTextEnd": [["Pinky+End"], ["Hyper+B"]] // file bottom
		"CursorMoveToTextEndSelect": [["Pinky+Shift+End"], ["Hyper+Shift+B"]] // select file bottom
		"CursorMoveToWordBackward": [["Pinky+Left"], ["Hyper+U"]] // word left
		"CursorMoveToWordBackwardSelect": [["Pinky+Shift+Left"], ["Hyper+Shift+U"]] // select word left
		"CursorMoveToWordForward": [["Pinky+Right"], ["Hyper+O"]] // word right
		"CursorMoveToWordForwardSelect": [["Pinky+Shift+Right"], ["Hyper+Shift+O"]] // select word right

		"CursorMultiCloneAbove": [["Thumb+Shift+Up"]] // clone cursor up
		"CursorMultiCloneBelow": [["Thumb+Shift+Down"]] // clone cursor down

		//  "CursorMultiCloneOnLineEnds": [[""]
		//  "CursorSelectAll": [[""]
		//  "CursorSelectionContract": [["Pinky+Shift+"]
		//  "CursorSelectionExpand": [["Pinky+Shift+"]
		"EditNodeMoveDown": [["Pinky+Shift+K"]]
		"EditNodeMoveUp": [["Pinky+Shift+I"]]
		"EditNodeMoveIn": [["Pinky+Shift+L"]]
		"EditNodeMoveOut": [["Pinky+Shift+J"]]

		"EditNodeInsertAboveSibling": [["Pinky+Shift+U"]]
		"EditNodeInsertBelowSibling": [["Pinky+Shift+N"]]
		"EditNodeInsertAboveParent": [["Pinky+Shift+Y"]]
		"EditNodeInsertBelowChild": [["Pinky+Shift+M"]]
		"EditNodeInsertDuplicate": [["Pinky+D"]]

		"EditNodeRename": [["Pinky+T"]]
		"EditNodeDelete": [["Pinky+Shift+X"]]
		"EditNodeJoin": [["Pinky+Shift+O"]]
		"EditNodeSplit": [["Pinky+Enter"]]

		"GotoEditorSettings": [["Pinky+Comma"]]

	}

}
