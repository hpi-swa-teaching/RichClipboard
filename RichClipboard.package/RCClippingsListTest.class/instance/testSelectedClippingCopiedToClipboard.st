testing
testSelectedClippingCopiedToClipboard
	| selected storage clippingsList priorClipping |
	
	priorClipping := Clipboard default clipboardText.
	
	storage := RCStorage new.
	storage add: 'sdizufowasi'.
	
	clippingsList := RCClippingsList newWithStorage: storage.
	clippingsList isInPrivateMode: true.

	selected := 1.
	clippingsList copyBackToClipboard: selected.
	self assert: ((Clipboard default clipboardText string) = 'sdizufowasi').
	
	Clipboard default clipboardText: priorClipping