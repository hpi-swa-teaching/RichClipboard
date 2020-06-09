testing
testGetReturnsFirstXItems
	| storageItems |
	
	storageItems := { 'Test1' . 'Test2' . 'Test3' }.
	storageItems do: [ :item | self storage add: item ].
	self assert: ((self storage get: 1) hasEqualElements: { storageItems at: 3 }).
	self assert: ((self storage get: 2) hasEqualElements: { (storageItems at: 3) . (storageItems at: 2) }).
	self assert: (self storage get: 0) isEmpty