private mode
turnOnPrivateMode
	self privateModeActive
		ifFalse: [ 
			privateModeActive := true.
			self updateWindowTitle
		]