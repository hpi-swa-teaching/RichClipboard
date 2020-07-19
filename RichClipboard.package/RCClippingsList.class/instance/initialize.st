initialize-release
initialize
	super initialize.
	self borderWidth: 0.
	
	self storage
		when: #clippingsChanged
		send: #clippingsChanged 
		to: self
		
