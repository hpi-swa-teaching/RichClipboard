testing
testToggleSortByDate
	window toggleDateSort.
	self assert: window dateSortInverted.
	
	window toggleDateSort.
	self assert: window dateSortInverted not