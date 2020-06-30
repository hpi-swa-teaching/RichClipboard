sort-alphabetically
toggleAlphabeticSort

	self alphabeticSortInverted ifTrue: [ 
		alphabeticSortInverted := false.
		self clippingsList sortByName.
		self currentSortMode: ' (a-z)'.
		self updateWindowTitle.
	] ifFalse: [
		alphabeticSortInverted := true.
		self clippingsList sortByNameInverse. 
		self currentSortMode: ' (z-a)'.
		self updateWindowTitle.
	].
	self changed: #alphabeticSortButtonLabel.
	self fixHeightOfToolbarButtons
