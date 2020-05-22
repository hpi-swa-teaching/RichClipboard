testing
testClippingIsAddedToClipboard
	| clipping |
	clipping := 'CLIPBOARD_TEST_wf987h239ifhb1987638fg'.
	self assert: self richClipboard storage size = 0.
	Clipboard default clipboardText: clipping  notifyWith: self.
	self assert: self richClipboard storage size = 1.
	self assert: (self richClipboard storage getAll includes: clipping)