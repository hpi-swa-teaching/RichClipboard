testing
testSelectedClippingRemoved
	| selected clippingsList |
	
	clippingsList :=  self rcclippings.
	selected := 2.
	clippingsList copyBackToClipboard: selected.
	self assert: ((clippingsList clippings size) = 1)