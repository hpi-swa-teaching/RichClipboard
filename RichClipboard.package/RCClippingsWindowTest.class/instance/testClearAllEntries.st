testing
testClearAllEntries
	storage add: 'hallo';
				   add: 'Welt'.

	window clearAllEntries.
	self assert: (storage size = 0)
	