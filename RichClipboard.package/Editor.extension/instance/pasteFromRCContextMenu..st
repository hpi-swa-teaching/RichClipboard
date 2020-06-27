*RichClipboard
pasteFromRCContextMenu: selectedClipping
	self insertAndCloseTypeIn.
	self replace: self selectionInterval with: selectedClipping and:
		[ self selectAt: self pointIndex s]