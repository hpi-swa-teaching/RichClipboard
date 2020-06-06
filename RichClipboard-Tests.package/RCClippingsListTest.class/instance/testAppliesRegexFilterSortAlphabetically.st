testing
testAppliesRegexFilterSortAlphabetically
	| clippingsList storage |
	
	storage := RCStorage new.
	clippingsList := RCClippingsList newWithStorage: storage.
	
	storage add: 'a'.
	storage add: 'c'.
	storage add: 'B'.
	
	clippingsList sortByName.
	self assert: (clippingsList clippings hasEqualElements: { 'a' . 'B' . 'c' }).
	clippingsList sortByNameInverse.
	self assert: (clippingsList clippings hasEqualElements: { 'c' . 'B' . 'a' })