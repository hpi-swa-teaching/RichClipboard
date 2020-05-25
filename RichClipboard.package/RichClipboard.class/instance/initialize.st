initialize-release
initialize
	super initialize.
	self storage: RCStorage new.
	self window: (RCClippingsWindow newWithStorage: self storage).
	Clipboard default
		when: #contentChanged
		send: #clipboardChanged:from:
		to: self.
	self window
		when: #delete
		send: #destroy
		to: self.
	self window openInWorld.
	self addToWorldMenu