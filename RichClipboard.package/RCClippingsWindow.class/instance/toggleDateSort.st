sort-date
toggleDateSort
	self dateSortInverted ifTrue: [ 
		dateSortInverted := false.
		self clippingsList sortByDate. 
		self updateWindowTitle: ' (new-old)'
	] ifFalse: [
		dateSortInverted := true.
		self clippingsList sortByDateInverse. 
		self updateWindowTitle: ' (old-new)'
	].
	self changed: #dateSortButtonLabel.
	self fixHeightOfToolbarButtons