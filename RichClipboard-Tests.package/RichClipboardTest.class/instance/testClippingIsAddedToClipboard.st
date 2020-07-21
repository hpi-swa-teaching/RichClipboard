testing
testClippingIsAddedToClipboard
	self assert: richClipboard storage size = 0.
	richClipboard systemClipboard clipboardText: 'b1987638fg'.
	self assert: richClipboard storage size = 1.
	self assert: (richClipboard storage getAll first asString = 'b1987638fg')