testing
testSizeReturnsNumberOfStoredElements
	| storageItems |
	storageItems := { 'Test1' . 'Test2' . 'Test3' }.
	self assert: (self storage size = 0).
	storageItems do: [ :item | self storage add: item ].
	self assert: (self storage size = storageItems size).