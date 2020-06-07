testing
testPasteSelectedClipping
	| index |
	
	index := 1.
	self clippingsList contextMenuIsOpen: true.
	self shouldnt: [ self clippingsList selectedClippingIndex: index. ] raise: Error