private mode
turnOnPrivateMode
	self privateModeActive ifFalse: [ 
		privateModeActive := true.
		self storage privateModeActive: true.
		self clippingsList isInPrivateMode: true.
		self updateWindowTitle.
	]