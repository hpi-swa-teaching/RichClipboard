sort-date
toggleDateSort
	self dateSortInverted ifTrue: [ 
		dateSortInverted := false.
		self clippingsList sortByDate. 
		self currentSortMode: ' (new-old)'.
		self updateWindowTitle.
	] ifFalse: [
		dateSortInverted := true.
		self clippingsList sortByDateInverse. 
		self currentSortMode: ' (old-new)'.
		self updateWindowTitle.
	].
	self changed: #dateSortButtonLabel.
	self fixHeightOfToolbarButtons