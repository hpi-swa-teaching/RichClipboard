private mode
turnOffPrivateMode
	self privateModeActive ifTrue: [
		privateModeActive := false.
		self storage privateModeActive: false.
		self clippingsList isInPrivateMode: false. 
		self windowTitle: self class defaultLabel.
		self updateWindowTitle: self currentSortMode
	]
