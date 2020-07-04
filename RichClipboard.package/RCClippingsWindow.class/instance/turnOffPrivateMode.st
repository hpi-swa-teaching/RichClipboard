private mode
turnOffPrivateMode
	self privateModeActive ifTrue: [
		privateModeActive := false.
		self storage privateModeActive: false.
		self clippingsList isInPrivateMode: false. 
		self updateWindowTitle.
	]
