testing
testRegexFilterRemovable
	| clippingsList storage |
	
	storage := RCStorage new.
	clippingsList := RCClippingsList newWithStorage: storage.
	
	storage add: 'abc'.
	storage add: 'ade'.
	storage add: '...'.
	
	clippingsList filterByRegex: 'nada'.
	clippingsList removeFilterByRegex.
	self assert: clippingsList clippings size = 3