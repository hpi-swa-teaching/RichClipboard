testing
testPasteSelectedClipping
	| selected |
	selected := clippingsList selected: 1.
	self assert: selected = 2