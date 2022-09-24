package zenstrokes

import (
	keyzen "github.com/kghenderson/keyzen/cuedefs"
)

let ctx = "GlobalNavArrows"

Strokes: keyzen.#StrokesDef & {

	StrokesMap: {
		//"CursorMoveToCharBackward": "\(ctx)": []
		//"CursorMoveToCharBackwardSelect": "\(ctx)": []
		//"CursorMoveToCharForward": "\(ctx)": []
		//"CursorMoveToCharForwardSelect": "\(ctx)": []
		//"CursorMoveToLineBackward": "\(ctx)": []
		//"CursorMoveToLineBackwardSelect": "\(ctx)": []
		//"CursorMoveToLineBegin": "\(ctx)": []
		//"CursorMoveToLineBeginSelect": "\(ctx)": []
		//"CursorMoveToLineEnd": "\(ctx)": []
		//"CursorMoveToLineEndSelect": "\(ctx)": []
		//"CursorMoveToLineForward": "\(ctx)": []
		//"CursorMoveToLineForwardSelect": "\(ctx)": []
		//"CursorMoveToPageBackward": "\(ctx)": []
		//"CursorMoveToPageBackwardSelect": "\(ctx)": []
		//"CursorMoveToPageForward": "\(ctx)": []
		//"CursorMoveToPageForwardSelect": "\(ctx)": []
		//"CursorMoveToSubwordBackward": "\(ctx)": []
		//"CursorMoveToSubwordBackwardSelect": "\(ctx)": []
		//"CursorMoveToSubwordForward": "\(ctx)": []
		//"CursorMoveToSubwordForwardSelect": "\(ctx)": []
		//"CursorMoveToTextBegin": "\(ctx)": []
		//"CursorMoveToTextBeginSelect": "\(ctx)": []
		//"CursorMoveToTextEnd": "\(ctx)": []
		//"CursorMoveToTextEndSelect": "\(ctx)": []
		//"CursorMoveToWordBackward": "\(ctx)": []
		//"CursorMoveToWordBackwardSelect": "\(ctx)": []
		//"CursorMoveToWordForward": "\(ctx)": []
		//"CursorMoveToWordForwardSelect": "\(ctx)": []
		//"CursorMultiCloneAbove": "\(ctx)": []
		//"CursorMultiCloneBelow": "\(ctx)": []
		//"CursorMultiCloneOnLineEnds": "\(ctx)": []
		//"CursorSelectAll": "\(ctx)": []
		//"CursorSelectionContract": "\(ctx)": []
		//"CursorSelectionExpand": "\(ctx)": []
		"EditNodeDelete": "\(ctx)": ["pinky+shift+."]
		"EditNodeInsertAboveParent": "\(ctx)": ["pinky+shift+y"]
		"EditNodeInsertAboveSibling": "\(ctx)": ["pinky+shift+u"]
		"EditNodeInsertBelowChild": "\(ctx)": ["pinky+shift+n"]
		"EditNodeInsertBelowSibling": "\(ctx)": ["pinky+shift+m"]
		"EditNodeInsertDuplicate": "\(ctx)": ["pinky+shift+d"]
		"EditNodeJoin": "\(ctx)": ["pinky+shift+o"]
		"EditNodeMoveDown": "\(ctx)": ["pinky+shift+k"]
		"EditNodeMoveIn": "\(ctx)": ["pinky+shift+l"]
		"EditNodeMoveOut": "\(ctx)": ["pinky+shift+j"]
		"EditNodeMoveUp": "\(ctx)": ["pinky+shift+i"]
		"EditNodeRename": "\(ctx)": ["pinky+t"]
		"EditNodeSplit": "\(ctx)": ["pinky+enter"]

	}

}
