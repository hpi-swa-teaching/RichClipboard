private mode
turnOffPrivateMode
	self privateModeActive
		ifTrue: [ 
			privateModeActive := false.
			self updateWindowTitle
		]