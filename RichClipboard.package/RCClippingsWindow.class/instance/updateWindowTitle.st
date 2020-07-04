visual properties
updateWindowTitle
	self setLabel: self class defaultLabel.
	
	(self privateModeActive) 
		ifTrue: [self setLabel: self label, ' (private mode)'].
		
	self setLabel: self label, self currentSortMode
