testing
testRegexFilterRemovable
	storage add: 'abc';
			add: 'ade';
			add: '...'.
	
	clippingsList filterByRegex: 'nada';
				  removeFilterByRegex.
	self assert: clippingsList clippings size = 3