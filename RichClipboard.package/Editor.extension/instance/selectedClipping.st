*RichClipboard
selectedClipping
	| r storage |
	
	storage := RCStorage new.
	storage add: 'secret password'.
	storage add: 'b'.
	storage add: 'c'	.
	r := RCContextMenu newWithStorage: storage.
	r openInWorld.
	
	r clippingsList when: #clippingUpdated
		send: #delete
		to: r.
	
	r clippingsList when: #clippingUpdated
		send: #pasteFromContextMenu:
		to: self