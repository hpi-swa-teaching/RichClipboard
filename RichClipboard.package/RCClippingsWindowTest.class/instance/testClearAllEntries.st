testing
testClearAllEntries
	| storage window |
	
	storage := RCStorage new.
	window := RCClippingsWindow newWithStorage: storage.
	storage add: 'hallo';
			add: 'Welt'.
			
	window clearAllEntries.
	self assert: (storage size = 0)
	