*RichClipboard
pasteFromContextMenu: selectedClipping
	self replace: self selectionInterval with: selectedClipping and:
		[self selectAt: self pointIndex]