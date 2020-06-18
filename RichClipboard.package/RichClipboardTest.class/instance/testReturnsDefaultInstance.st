testing
testReturnsDefaultInstance
	| richClipboard1 richClipboard2 |
	
	richClipboard1 := RichClipboard default.
	self assert: richClipboard class = RichClipboard.
	richClipboard2 := RichClipboard default.
	self assert: richClipboard1 = richClipboard2