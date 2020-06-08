visual properties
updateWindowTitle
	| windowTitle |
	
	windowTitle := self class defaultLabel.
	(self privateModeActive)
		ifTrue: [ windowTitle := windowTitle, ' (Private Mode)' ].
	self setLabel: windowTitle