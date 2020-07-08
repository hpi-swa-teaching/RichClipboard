*RichClipboard
rcSelectAndPasteClipping
	| contextMenu |
	contextMenu := RCContextMenu newWithRichClipboard: RichClipboard default.
	contextMenu openInWorld.
	
	contextMenu clippingsList when: #requestPasteClipping
		send: #delete
		to: contextMenu.
	
	contextMenu clippingsList when: #requestPasteClipping
		send: #pasteFromRCContextMenu:
		to: self