testing
testUpdateTitleSortedByDate
	| updatedLabel |
	
	window toggleDateSort.
	updatedLabel := window windowTitle.
	self assert: window label = updatedLabel.
	
	window toggleDateSort.
	updatedLabel := window windowTitle.
	self assert: window label = updatedLabel
