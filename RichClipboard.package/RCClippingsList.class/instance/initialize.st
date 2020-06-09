initialize-release
initialize
	super initialize.
	self borderWidth: 0.

	regexFilter := nil.
	self contextMenuIsOpen: false.
	
	self storage
		when: #clippingsChanged
		send: #clippingsChanged 
		to: self
