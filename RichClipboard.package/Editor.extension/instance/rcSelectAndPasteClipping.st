*RichClipboard
rcSelectAndPasteClipping
	| contextMenu |
	contextMenu := RCContextMenu newWithStorage: (RichClipboard default storage) 
												andSystemClipboard: Clipboard default.
	contextMenu openInWorld.
	
	contextMenu clippingsList when: #requestPasteClipping
		send: #delete
		to: contextMenu.
	
	contextMenu clippingsList when: #requestPasteClipping
		send: #pasteFromRCContextMenu:
		to: self