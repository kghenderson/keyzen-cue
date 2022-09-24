package zenstrokes

import (
	keyzen "github.com/kghenderson/keyzen/cuedefs"
)

let ctx = "GlobalNavArrows"

Strokes: keyzen.#StrokesDef & {

	StrokesMap: {
		"CursorMoveToCharBackward": "\(ctx)": ["left"]
		"CursorMoveToCharBackwardSelect": "\(ctx)": ["shift+left"]
		"CursorMoveToCharForward": "\(ctx)": ["right"]
		"CursorMoveToCharForwardSelect": "\(ctx)": ["shift+right"]
		"CursorMoveToLineBackward": "\(ctx)": ["up"]
		"CursorMoveToLineBackwardSelect": "\(ctx)": ["shift+up"]
		"CursorMoveToLineBegin": "\(ctx)": ["home"]
		"CursorMoveToLineBeginSelect": "\(ctx)": ["shift+home"]
		"CursorMoveToLineEnd": "\(ctx)": ["end"]
		"CursorMoveToLineEndSelect": "\(ctx)": ["shift+end"]
		"CursorMoveToLineForward": "\(ctx)": ["down"]
		"CursorMoveToLineForwardSelect": "\(ctx)": ["shift+down"]
		"CursorMoveToPageBackward": "\(ctx)": ["pageup"]
		"CursorMoveToPageBackwardSelect": "\(ctx)": ["shift+pageup"]
		"CursorMoveToPageForward": "\(ctx)": ["pagedown"]
		"CursorMoveToPageForwardSelect": "\(ctx)": ["shift+pagedown"]
		"CursorMoveToSubwordBackward": "\(ctx)": ["thumb+left"]
		"CursorMoveToSubwordBackwardSelect": "\(ctx)": ["thumb+shift+left"]
		"CursorMoveToSubwordForward": "\(ctx)": ["thumb+right"]
		"CursorMoveToSubwordForwardSelect": "\(ctx)": ["thumb+shift+right"]
		"CursorMoveToTextBegin": "\(ctx)": ["pinky+home"]
		"CursorMoveToTextBeginSelect": "\(ctx)": ["pinky+shift+home"]
		"CursorMoveToTextEnd": "\(ctx)": ["pinky+end"]
		"CursorMoveToTextEndSelect": "\(ctx)": ["pinky+shift+end"]
		"CursorMoveToWordBackward": "\(ctx)": ["pinky+left"]
		"CursorMoveToWordBackwardSelect": "\(ctx)": ["pinky+shift+left"]
		"CursorMoveToWordForward": "\(ctx)": ["pinky+right"]
		"CursorMoveToWordForwardSelect": "\(ctx)": ["pinky+shift+right"]
		"CursorMultiCloneAbove": "\(ctx)": ["thumb+shift+up"]
		"CursorMultiCloneBelow": "\(ctx)": ["thumb+shift+down"]
		//  "CursorMultiCloneOnLineEnds": "\(ctx)": [""]
		//  "CursorSelectAll": "\(ctx)": [""]
		//  "CursorSelectionContract": "\(ctx)": [""]
		//  "CursorSelectionExpand": "\(ctx)": [""]
		//  "EditNodeDelete": "\(ctx)": [""]
		//  "EditNodeInsertAboveParent": "\(ctx)": [""]
		//  "EditNodeInsertAboveSibling": "\(ctx)": [""]
		//  "EditNodeInsertBelowChild": "\(ctx)": [""]
		//  "EditNodeInsertBelowSibling": "\(ctx)": [""]
		//  "EditNodeInsertDuplicate": "\(ctx)": [""]
		//  "EditNodeJoin": "\(ctx)": [""]
		//  "EditNodeMoveDown": "\(ctx)": [""]
		//  "EditNodeMoveIn": "\(ctx)": [""]
		//  "EditNodeMoveOut": "\(ctx)": [""]
		//  "EditNodeMoveUp": "\(ctx)": [""]
		//  "EditNodeRename": "\(ctx)": [""]
		//  "EditNodeSplit": "\(ctx)": [""]
	}

}
