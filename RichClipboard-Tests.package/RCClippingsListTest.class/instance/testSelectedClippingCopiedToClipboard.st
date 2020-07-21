testing
testSelectedClippingCopiedToClipboard
	| selected |
	
	storage add: 'abcdasfdas34e'.
	richClipboard turnOnPrivateMode.
	selected := 1.
	
	clippingsList copyBackToClipboard: selected.
	self assert: (systemClipboard clipboardText string = 'abcdasfdas34e')