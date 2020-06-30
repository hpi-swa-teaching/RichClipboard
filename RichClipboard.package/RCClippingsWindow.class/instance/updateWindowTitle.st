visual properties
updateWindowTitle
	self setLabel: self class defaultLabel.
	
	(self privateModeActive) 
		ifTrue: [self setLabel: self label, ' (private mode)']
		ifFalse: [self setLabel: self label, ''].
		
	self setLabel: self label, self currentSortMode
