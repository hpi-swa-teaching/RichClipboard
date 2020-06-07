accessing
selectedClippingIndex: anIndex
	"At this moment we do not want any item to be selected"
	self changed: #selectedClippingIndex.
	(self contextMenuIsOpen) ifTrue: [ self pasteClippingAt: anIndex ]
	