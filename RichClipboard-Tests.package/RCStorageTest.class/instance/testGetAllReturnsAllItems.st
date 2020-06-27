testing
testGetAllReturnsAllItems
	| storageItems |
	
	storageItems := { 'Test1' }.
	self storage add: (storageItems first).
	self assert: (self storage getAll size = 1).
	self assert: (self storage getAll first = (storageItems first))