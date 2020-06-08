private mode
togglePrivateMode
	self privateModeActive ifTrue: [
		self turnOffPrivateMode.
		self clippingsList canCopy.
	] ifFalse: [
		self turnOnPrivateMode.
		self clippingsList cantCopy.
	]
