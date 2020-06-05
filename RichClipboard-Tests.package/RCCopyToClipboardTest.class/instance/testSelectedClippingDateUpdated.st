testing
testSelectedClippingDateUpdated
	| selected clippings |
	clippings :=  self rcclippings.
	selected := 2.
	clippings copyBackToClipboard: selected.
	self assert: ((clippings selectedClippingIndex: 1) = (clippings selectedClippingIndex: selected))

	