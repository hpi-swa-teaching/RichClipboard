testing
testAppliesSortByDate
	storage add: 'abc'.
	storage add: 'adsfabc'.
	storage add: 'ahfghbc'.
	
	clippingsList sortByDate.
	self assert: (clippingsList clippings hasEqualElements: { 'ahfghbc' . 'adsfabc' . 'abc' }).
	clippingsList sortByDateInverse.
	self assert: (clippingsList clippings hasEqualElements: { 'abc' . 'adsfabc' . 'ahfghbc' })