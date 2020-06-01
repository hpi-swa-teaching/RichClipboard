testing
testGetRaisesErrorOnInvalidInput
	| storageItems |
	
	storageItems := { 'Test1' . 'Test2' . 'Test3' }.
	storageItems do: [ :item | self storage add: item ].
	self should: [ self storage get: -1 ] raise: RCInvalidParameterError.
	self should: [ self storage get: '2' ] raise: RCInvalidParameterError.
	self should: [ self storage get: 0.5 ] raise: RCInvalidParameterError.
	self should: [ self storage get: 4 ] raise: RCOutOfBoundsError