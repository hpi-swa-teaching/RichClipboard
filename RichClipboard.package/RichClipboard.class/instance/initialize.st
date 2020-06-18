initialize-release
initialize
	super initialize.

	openWindows := LinkedList new.
	storage := RCStorage new.
		
	self isTestInstance ifFalse: [
		Clipboard default
								when: #contentChanged
								send: #clipboardChanged:from:
								to: self.
		self addToAppsWorldMenu
	]