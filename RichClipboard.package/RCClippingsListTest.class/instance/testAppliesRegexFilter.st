testing
testAppliesRegexFilter
	| clippingsList storage |
	
	storage := RCStorage new.
	clippingsList := RCClippingsList newWithStorage: storage.
	
	storage add: 'abc'.
	storage add: 'ade'.
	storage add: '...'.
	
	clippingsList filterByRegex: '.*'.
	self assert: (clippingsList clippings hasEqualElements: { '...' . 'ade' . 'abc'}).
	clippingsList filterByRegex: 'a.*'.
	self assert: (clippingsList clippings hasEqualElements: { 'ade' . 'abc' }).
	clippingsList filterByRegex: 'nada'.
	self assert: (clippingsList clippings size = 0)