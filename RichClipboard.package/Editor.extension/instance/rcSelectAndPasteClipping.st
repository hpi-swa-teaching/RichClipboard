*RichClipboard
rcSelectAndPasteClipping
	| r storage |
	
	storage := RCStorage new.
	storage add: 'secret password'.
	storage add: 'b'.
	storage add: 'c'	.
	r := RCContextMenu newWithStorage: storage.
	r openInWorld.
	
	r clippingsList when: #requestPasteClipping
		send: #delete
		to: r.
	
	r clippingsList when: #requestPasteClipping
		send: #pasteFromRCContextMenu:
		to: self