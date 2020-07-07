testing
testAppliesSortByDate
	storage add: 'abc';
			add: 'adsfabc';
			add: 'ahfghbc'.
	
	clippingsList sortByDate.
	self assert: (clippingsList clippingsAsStrings hasEqualElements: { 'ahfghbc' . 'adsfabc' . 'abc' }).
	clippingsList sortByDateInverse.
	self assert: (clippingsList clippingsAsStrings hasEqualElements: { 'abc' . 'adsfabc' . 'ahfghbc' })