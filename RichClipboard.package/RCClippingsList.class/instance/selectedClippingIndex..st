accessing
selectedClippingIndex: anIndex
	" At this moment we do not want any item to be selected "
	
	self changed: #selectedClippingIndex.
	(anIndex > 0 and: [ self lastEventWasMouseEvent ]) ifTrue: [
		(self belongsToContextMenu) ifTrue: [ 
			self pasteClippingAt: anIndex 
		] ifFalse: [
			self copyBackToClipboard: anIndex 
		]
	]
