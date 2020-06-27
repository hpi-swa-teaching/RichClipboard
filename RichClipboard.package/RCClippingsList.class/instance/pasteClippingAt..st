events
pasteClippingAt: anIndex
	(anIndex > 0) ifTrue: [ self triggerEvent: #requestPasteClipping with: (self clippingsAsStrings at: anIndex) ]
