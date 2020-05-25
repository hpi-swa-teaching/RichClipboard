initialize-release
initialize
	super initialize.
	
	self update.
	self storage when: #addedEntry send: #addedEntry: to: self.
	
	self borderWidth: 0