sort-date
toggleDateSort
	self dateSortInverted ifTrue: [ 
		dateSortInverted := false.
		self clippingsList sortByDate. 
		currentSortMode := ' (new-old)'
	] ifFalse: [
		dateSortInverted := true.
		self clippingsList sortByDateInverse. 
		currentSortMode := ' (old-new)'
	].
	self updateWindowTitle.
	self changed: #dateSortButtonLabel.
	self fixHeightOfToolbarButtons