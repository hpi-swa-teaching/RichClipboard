testing
testAppliesRegexFilterSortByDate
	| clippingsList storage |
	
	storage := RCStorage new.
	clippingsList := RCClippingsList newWithStorage: storage.
	
	storage add: 'abc'.
	storage add: 'adsfabc'.
	storage add: 'ahfghbc'.
	
	clippingsList sortByDate.
	self assert: (clippingsList clippings hasEqualElements: { 'abc' . 'adsfabc' . 'ahfghbc' }).
	clippingsList sortByDateInverse.
	self assert: (clippingsList clippings hasEqualElements: { 'ahfghbc' . 'adsfabc' . 'abc' })