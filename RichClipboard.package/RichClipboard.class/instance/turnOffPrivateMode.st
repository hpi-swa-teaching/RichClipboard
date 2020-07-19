private mode
turnOffPrivateMode
	self privateModeActive ifTrue: [
		privateModeActive := false.
		openWindows do: [ :window | 
			window updateWindowTitle
		]
	]
