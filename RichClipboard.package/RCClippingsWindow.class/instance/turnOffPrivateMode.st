private mode
turnOffPrivateMode
	self privateModeActive
		ifTrue: [ 
			self storage privateModeActive: false.
			privateModeActive := false.
			self updateWindowTitle
		]