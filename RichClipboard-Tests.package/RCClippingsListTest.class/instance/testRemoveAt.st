testing
testRemoveAt
	
	storage add: 'hallo';
			add: 'world';
			add: 'test'.
	
	clippingsList filterByRegex: '.*wor.*'.
	clippingsList removeAt: 1.
	clippingsList removeFilterByRegex.
	self assert: (clippingsList clippingsAsStrings hasEqualElements: { 'test' . 'hallo' })