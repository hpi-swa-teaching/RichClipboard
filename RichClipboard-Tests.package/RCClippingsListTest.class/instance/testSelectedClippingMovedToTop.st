testing
testSelectedClippingMovedToTop
	| selected |

	storage add: 'test1'.
	storage add: 'test2'.
	selected := 2.
	
	clippingsList copyBackToClipboard: selected.
	self assert: (clippingsList clippingsAsStrings hasEqualElements: { 'test1' . 'test2' })