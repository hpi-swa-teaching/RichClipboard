testing
testTogglePrivateMode
	| storage window previousSize |
	
	storage := RCStorage new.
	window := RCClippingsWindow newWithStorage: storage.
	window togglePrivateMode.
	previousSize := storage size.
	storage add: 'abc'.
	self assert: (previousSize = storage size).
	window togglePrivateMode.
	storage add: 'abc'.
	self assert: (previousSize + 1 = storage size)