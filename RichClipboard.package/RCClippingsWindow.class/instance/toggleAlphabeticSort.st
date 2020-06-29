sort-alphabetically
toggleAlphabeticSort

	self alphabeticSortInverted ifTrue: [ 
		alphabeticSortInverted := false.
		self clippingsList sortByName.
		self updateWindowTitle: ' (a-z)'
	] ifFalse: [
		alphabeticSortInverted := true.
		self clippingsList sortByNameInverse. 
		self updateWindowTitle: ' (z-a)'
	].
	self changed: #alphabeticSortButtonLabel.
	self fixHeightOfToolbarButtons
