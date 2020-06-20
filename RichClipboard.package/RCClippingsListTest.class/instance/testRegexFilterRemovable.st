testing
testRegexFilterRemovable
	storage add: 'abc'.
	storage add: 'ade'.
	storage add: '...'.
	
	clippingsList filterByRegex: 'nada'.
	clippingsList removeFilterByRegex.
	self assert: clippingsList clippings size = 3