private mode
turnOnPrivateMode
	self privateModeActive ifFalse: [ 
		privateModeActive := true.
		openWindows do: [ :window |
			window updateWindowTitle
		]
	]