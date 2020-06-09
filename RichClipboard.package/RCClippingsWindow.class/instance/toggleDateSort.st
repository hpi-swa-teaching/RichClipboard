sort-date
toggleDateSort
	self dateSortInverted ifTrue: [ 
		dateSortInverted := false.
		self clippingsList sortByDate
	] ifFalse: [
		dateSortInverted := true.
		self clippingsList sortByDateInverse
	].
	self changed: #dateSortButtonLabel.
	self fixHeightOfToolbarButtons