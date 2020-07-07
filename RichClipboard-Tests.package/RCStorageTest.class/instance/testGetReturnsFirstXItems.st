testing
testGetReturnsFirstXItems
	| storageItems returnedItems |
	
	storageItems := { 'Test1' . 'Test2' . 'Test3' }.
	storageItems do: [ :item | self storage add: item ].
	
	returnedItems := (self storage get: 1).
	self assert: returnedItems size = 1.
	self assert: returnedItems first asString = 'Test3'.
	
	returnedItems := (self storage get: 2).
	self assert: returnedItems size = 2.
	self assert: returnedItems first asString = 'Test3'.
	self assert: returnedItems second asString = 'Test2'.
	
	self assert: (self storage get: 0) isEmpty