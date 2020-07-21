testing
testPasteSelectedClipping
	| index |
	
	index := 1.
	clippingsList lastEventWasMouseEvent: true.
	clippingsList selectedClippingIndex: index.
	self assert: (editor pastedClippings hasEqualElements: { '6' })