testing
testSelectedClippingCopiedToClipboard
	| selected |
	
	selected := 1.
	self rcclippings copyBackToClipboard: selected.
	self assert: (rcclippings clippings at: 1) = 'test1'.
	self assert: clipboard clipboardText = 'test2'