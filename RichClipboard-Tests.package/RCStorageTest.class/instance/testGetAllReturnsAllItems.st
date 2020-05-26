testing
testGetAllReturnsAllItems
	| storageItems |
	
	storageItems := { 'Test1' }.
	self storage add: (storageItems at: 1).
	self assert: (self storage getAll size = 1).
	self assert: (self storage getAll first = (storageItems at: 1))