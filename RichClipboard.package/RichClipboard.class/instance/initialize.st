initialize-release
initialize
	super initialize.
	
	self storage: RCStorage new.
	Clipboard default
		when: #contentChanged
		send: #clipboardChanged:from:
		to: self.
	self contextMenu: (RCContextMenu newWithStorage: self storage).
	self contextMenu
		when: #delete
		send: #destroy
		to: self.
	self window: (RCClippingsWindow newWithStorage: self storage).
	self window
		when: #delete
		send: #destroy
		to: self.
	self window openInWorld.
	self addToAppsWorldMenu