testing
testSelectedClippingCopiedToClipboard
	| selected storage clippingsList |
	
	storage := RCStorage new.
	clippingsList := RCClippingsList newWithStorage: storage.
	clippingsList canCopy.
	
	storage add: 'test1'.
	storage add: 'test2'.
	
	selected := 1.
	clippingsList copyBackToClipboard: selected.
	self assert: (clippingsList clippings at: 1) = 'test1'.
	self assert: Clipboard default clipboardText = 'test2'