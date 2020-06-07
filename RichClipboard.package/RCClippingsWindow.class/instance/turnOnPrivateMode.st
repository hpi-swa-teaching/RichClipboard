private mode
turnOnPrivateMode
	self privateModeActive ifFalse: [ 
		self storage privateModeActive: true.
		privateModeActive := true.
		self updateWindowTitle
	]
