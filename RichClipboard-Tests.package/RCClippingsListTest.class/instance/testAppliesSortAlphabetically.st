testing
testAppliesSortAlphabetically
	storage add: 'a';
			add: 'c';
			add: 'B'.
	
	clippingsList sortByName.
	self assert: (clippingsList clippings hasEqualElements: { 'a' . 'B' . 'c' }).
	clippingsList sortByNameInverse.
	self assert: (clippingsList clippings hasEqualElements: { 'c' . 'B' . 'a' })