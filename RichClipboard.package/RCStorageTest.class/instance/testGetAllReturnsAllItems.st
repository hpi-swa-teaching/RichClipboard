testing
testGetAllReturnsAllItems
	| storageItems |
	
	storageItems := { 'Test1' }.
	storage add: (storageItems first).
	self assert: (storage getAll size = 1).
	self assert: (storage getAll first asString = (storageItems first))