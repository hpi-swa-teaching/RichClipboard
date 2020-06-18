initialize-release
initialize
	super initialize.

	openWindows := LinkedList new.
	storage := RCStorage new.
	Clipboard default
		when: #contentChanged
		send: #clipboardChanged:from:
		to: self.
		
	self isTestInstance ifFalse: [
		self addToAppsWorldMenu
	]