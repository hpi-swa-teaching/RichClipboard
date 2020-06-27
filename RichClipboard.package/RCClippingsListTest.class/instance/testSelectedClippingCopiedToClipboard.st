testing
testSelectedClippingCopiedToClipboard
	| selected |
	
	storage add: 'abcdasfdas34e'.
	clippingsList isInPrivateMode: true.
	selected := 1.
	
	clippingsList copyBackToClipboard: selected.
	self assert: (systemClipboard clipboardText string = 'abcdasfdas34e')