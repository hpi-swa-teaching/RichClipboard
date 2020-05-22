testing
testGetAllReturnsAllItems
	| storageItems |
	storageItems := { 'Test1' }.
	self storage add: (storageItems at: 1).
	self assert: (self storage getAll sameElements: storageItems)