*RichClipboard
rcSelectAndPasteClipping
	| r |
	r := RCContextMenu newWithStorage: (RichClipboard default storage).
	r openInWorld.
	
	r clippingsList when: #requestPasteClipping
		send: #delete
		to: r.
	
	r clippingsList when: #requestPasteClipping
		send: #pasteFromRCContextMenu:
		to: self