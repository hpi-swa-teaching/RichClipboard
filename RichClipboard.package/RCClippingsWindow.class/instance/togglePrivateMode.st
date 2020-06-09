private mode
togglePrivateMode
	self privateModeActive ifTrue: [
		self turnOffPrivateMode.
		self clippingsList isInPrivateMode: false.
	] ifFalse: [
		self turnOnPrivateMode.
		self clippingsList isInPrivateMode: true.
	]
