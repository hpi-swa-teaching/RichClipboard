testing
testRemoveItemAtIndex
	| storageItems |
	
	storageItems := { 'Test1' . 'Test3' }.
	self storage add: 'Test1';
				 add: 'Test2';
				 add: 'Test3'.
	self storage removeAtIndex: 2.
	self assert: (self storage size = 2).
	self assert: ((self storage getAll last) asString = storageItems first).
	self assert: ((self storage getAll first) asString = storageItems last)