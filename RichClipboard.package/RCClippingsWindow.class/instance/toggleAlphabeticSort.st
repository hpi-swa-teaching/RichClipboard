sort-alphabetically
toggleAlphabeticSort
	self alphabeticSortInverted ifTrue: [ 
		alphabeticSortInverted := false.
		self clippingsList sortByName
	] ifFalse: [
		alphabeticSortInverted := true.
		self clippingsList sortByNameInverse
	].
	self changed: #alphabeticSortButtonLabel.
	self fixHeightOfToolbarButtons