testing
testSelectedClippingRemoved
	| selected clippingsList storage |
	
	storage := RCStorage new.
	clippingsList := RCClippingsList newWithStorage: storage.
	clippingsList canCopy.
	
	storage add: 'test1'.
	storage add: 'test2'.
	
	selected := 2.
	clippingsList copyBackToClipboard: selected.
	self assert: ((clippingsList clippings size) = 1)