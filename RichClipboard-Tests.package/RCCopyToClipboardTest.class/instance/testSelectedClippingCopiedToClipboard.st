testing
testSelectedClippingCopiedToClipboard
	| selected |
	selected := 1.
	self rcclippings copyBackToClipboard: selected.
	Transcript showln: (rcclippings clippings at: 1).
	Transcript showln: clipboard clipboardText.
	self assert: (rcclippings clippings at: 1) = 'test1'.
	self assert: clipboard clipboardText = 'test1'