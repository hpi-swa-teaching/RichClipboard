testing
testToggleSortAlphabetically
	window toggleAlphabeticSort.
	self assert: window alphabeticSortInverted.
	
	window toggleAlphabeticSort.
	self assert: window alphabeticSortInverted not