initialize-release
initialize
	super initialize.
	
	openWindows := LinkedList new.
	storage := RCStorage new.

	self isTestInstance ifTrue: [
		systemClipboard := RCSystemClipboardNullObject new.
	] ifFalse: [
		systemClipboard := Clipboard default.
		self addToAppsWorldMenu
	].

	self systemClipboard when: #contentChanged
						   	send: #clipboardChanged:from:
							to: self