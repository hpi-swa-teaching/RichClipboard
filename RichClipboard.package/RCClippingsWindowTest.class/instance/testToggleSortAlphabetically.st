testing
testToggleSortAlphabetically
	| storage window |
	
	storage := RCStorage new.
	window := RCClippingsWindow newWithStorage: storage.
	window toggleAlphabeticSort.
	self assert: window alphabeticSortInverted.
	window toggleAlphabeticSort.
	self assert: window alphabeticSortInverted not