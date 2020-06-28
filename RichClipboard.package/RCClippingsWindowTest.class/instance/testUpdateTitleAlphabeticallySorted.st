testing
testUpdateTitleAlphabeticallySorted
	| updatedLabel |
	
	window toggleAlphabeticSort.
	updatedLabel := window windowTitle.
	self assert: window label = updatedLabel.
	
	window toggleAlphabeticSort.
	updatedLabel := window windowTitle.
	self assert: window label = updatedLabel
