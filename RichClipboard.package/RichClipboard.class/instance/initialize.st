initialize-release
initialize
	super initialize.
	self storage: RCStorage new.
	Clipboard default
		when: #contentChanged
		send: #clipboardChanged:from:
		to: self.