testing
testPasteSelectedClipping
	| index |
	
	index := 1.
	self clippingsList belongsToContextMenu: true.
	self shouldnt: [ self clippingsList selectedClippingIndex: index. ] raise: Error