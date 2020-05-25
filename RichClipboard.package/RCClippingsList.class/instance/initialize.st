initialize-release
initialize
	super initialize.
	self borderWidth: 0.
	
	self update.
	self storage 
		when: #addedEntry 
		send: #addedEntry: 
		to: self