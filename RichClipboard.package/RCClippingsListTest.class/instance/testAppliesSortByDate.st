testing
testAppliesSortByDate
	storage add: 'abc';
			add: 'adsfabc';
			add: 'ahfghbc'.
	
	clippingsList sortByDate.
	self assert: (clippingsList clippings hasEqualElements: { 'ahfghbc' . 'adsfabc' . 'abc' }).
	clippingsList sortByDateInverse.
	self assert: (clippingsList clippings hasEqualElements: { 'abc' . 'adsfabc' . 'ahfghbc' })