sort-alphabetically
toggleAlphabeticSort

	self alphabeticSortInverted ifTrue: [ 
		alphabeticSortInverted := false.
		self clippingsList sortByName. 
		
		(self privateModeActive) 
		ifTrue: [self windowTitle: self class defaultLabel, ' (private mode)']
		ifFalse: [self windowTitle: self class defaultLabel].
		
		self currentSortMode: ' (a-z)'.
		self updateWindowTitle: self currentSortMode
	] ifFalse: [
		alphabeticSortInverted := true.
		self clippingsList sortByNameInverse. 
		
		(self privateModeActive) 
		ifTrue: [self windowTitle: self class defaultLabel, ' (private mode)']
		ifFalse: [self windowTitle: self class defaultLabel].
		
		self currentSortMode: ' (z-a)'.
		self updateWindowTitle: self currentSortMode

	].
	self changed: #alphabeticSortButtonLabel.
	self fixHeightOfToolbarButtons
