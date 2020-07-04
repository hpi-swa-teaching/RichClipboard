sort-alphabetically
toggleAlphabeticSort

	self alphabeticSortInverted ifTrue: [ 
		alphabeticSortInverted := false.
		self clippingsList sortByName.
		currentSortMode := ' (a-z)'
	] ifFalse: [
		alphabeticSortInverted := true.
		self clippingsList sortByNameInverse. 
		currentSortMode := ' (z-a)'
	].
	self updateWindowTitle.
	self changed: #alphabeticSortButtonLabel.
	self fixHeightOfToolbarButtons
