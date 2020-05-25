initialize-release
initialize
	super initialize.
	self storage: RCStorage new.
	self window: (RCClippingsWindow newWithStorage: self storage).
	Clipboard default
		when: #contentChanged
		send: #clipboardChanged:from:
		to: self.
	self window openInWorld