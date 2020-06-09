testing
testSelectedClippingCopiedToClipboard
	| selected storage clippingsList testWord priorClipping |
	
	priorClipping := Clipboard default clipboardText.
	testWord := 'sdizufowasiuzghfoiashgiuashfdg'.
	
	storage := RCStorage new.
	storage add: testWord.
	
	clippingsList := RCClippingsList newWithStorage: storage.
	clippingsList isInPrivateMode: true.

	selected := 1.
	clippingsList copyBackToClipboard: selected.
	self assert: Clipboard default clipboardText = testWord.
	
	Clipboard default clipboardText: priorClipping