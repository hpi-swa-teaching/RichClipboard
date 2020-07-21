testing
testSizeReturnsNumberOfStoredElements
	| storageItems |
	
	storageItems := { 'Test1' . 'Test2' . 'Test3' }.
	self assert: (storage size = 0).
	storageItems do: [ :item | storage add: item ].
	self assert: (storage size = storageItems size)