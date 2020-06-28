sort-date
toggleDateSort
	self dateSortInverted ifTrue: [ 
		dateSortInverted := false.
		self clippingsList sortByDate. 
		
		(self privateModeActive) 
		ifTrue: [self windowTitle: self class defaultLabel, ' (private mode)']
		ifFalse: [self windowTitle: self class defaultLabel].
		
		self currentSortMode: ' (new-old)'.
		self updateWindowTitle: self currentSortMode
	] ifFalse: [
		dateSortInverted := true.
		self clippingsList sortByDateInverse. 
		
		(self privateModeActive) 
		ifTrue: [self windowTitle: self class defaultLabel, ' (private mode)']
		ifFalse: [self windowTitle: self class defaultLabel].
		
		self currentSortMode: ' (old-new)'.
		self updateWindowTitle: self currentSortMode
	].
	self changed: #dateSortButtonLabel.
	self fixHeightOfToolbarButtons