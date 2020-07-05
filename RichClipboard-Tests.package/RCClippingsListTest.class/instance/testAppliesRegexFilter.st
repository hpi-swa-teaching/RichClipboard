testing
testAppliesRegexFilter		
	storage add: 'abc';
			add: 'ade';
			add: '...'.
	
	clippingsList filterByRegex: '.*'.
	self assert: (clippingsList clippings hasEqualElements: { '...' . 'ade' . 'abc'}).
	clippingsList filterByRegex: 'a.*'.
	self assert: (clippingsList clippings hasEqualElements: { 'ade' . 'abc' }).
	clippingsList filterByRegex: 'nada'.
	self assert: (clippingsList clippings size = 0)