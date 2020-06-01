private mode
togglePrivateMode
	self privateModeActive
		ifTrue: [ self turnOffPrivateMode ]
		ifFalse: [ self turnOnPrivateMode ]