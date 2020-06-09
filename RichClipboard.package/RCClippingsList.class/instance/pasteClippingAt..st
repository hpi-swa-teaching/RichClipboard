accessing
pasteClippingAt: anIndex
	(anIndex > 0) ifTrue: [ self triggerEvent: #clippingUpdated with: (self clippings at: anIndex) ]
