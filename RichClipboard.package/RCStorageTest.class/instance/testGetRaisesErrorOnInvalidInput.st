testing
testGetRaisesErrorOnInvalidInput
	| storageItems |
	
	storageItems := { 'Test1' . 'Test2' . 'Test3' }.
	storageItems do: [ :item | storage add: item ].
	self should: [ storage get: -1 ] raise: RCInvalidParameterError.
	self should: [ storage get: '2' ] raise: RCInvalidParameterError.
	self should: [ storage get: 0.5 ] raise: RCInvalidParameterError.
	self should: [ storage get: 4 ] raise: RCOutOfBoundsError