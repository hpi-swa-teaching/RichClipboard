testing
testToggleSortByDate
	| storage window |
	
	storage := RCStorage new.
	window := RCClippingsWindow newWithStorage: storage.
	window toggleDateSort.
	self assert: window dateSortInverted.
	window toggleDateSort.
	self assert: window dateSortInverted not