*RichClipboard
pasteFromRCContextMenu: selectedClipping
	self replace: self selectionInterval with: selectedClipping and:
		[self selectAt: self pointIndex]