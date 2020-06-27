testing
testAppliesSortAlphabetically
	storage add: 'a';
			add: 'c';
			add: 'B'.
	
	clippingsList sortByName.
	self assert: (clippingsList clippingsAsStrings hasEqualElements: { 'a' . 'B' . 'c' }).
	clippingsList sortByNameInverse.
	self assert: (clippingsList clippingsAsStrings hasEqualElements: { 'c' . 'B' . 'a' })