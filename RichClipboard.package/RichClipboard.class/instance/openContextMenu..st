initialization
openContextMenu: anEditor
	self destroyContextMenu.
	contextMenu := RCContextMenu newWithRichClipboard: self.
	contextMenu openInWorld.
	
	contextMenu clippingsList when: #requestPasteClipping
		send: #destroyContextMenu
		to: self.
	
	contextMenu clippingsList when: #requestPasteClipping
		send: #pasteFromRCContextMenu:
		to: anEditor.
		
	^ contextMenu