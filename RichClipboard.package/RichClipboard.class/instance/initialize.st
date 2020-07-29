initialize-release
initialize
	super initialize.
	privateModeActive := false.
	openWindows := LinkedList new.
	storage := RCStorage newWithRichClipboard: self.

	self isTestInstance ifTrue: [
		systemClipboard := RCSystemClipboardNullObject new.
	] ifFalse: [
		systemClipboard := Clipboard default.
		self addToAppsWorldMenu
	].

	self systemClipboard when: #contentChanged
						   	send: #clipboardChanged:from:
							to: self.
							
	self systemClipboard when: #contentChanged
							send: #startTimerRemoveFromClipboard
							to: self