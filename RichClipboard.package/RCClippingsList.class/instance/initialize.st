initialize-release
initialize
	super initialize.
	self borderWidth: 0.
	regexFilter := nil.
	self contextMenuIsOpen: false.
	self timeoutMS: self class defaultTimeoutMS.
	
	self storage
		when: #clippingsChanged
		send: #clippingsChanged 
		to: self.
		
	systemClipboard when: #contentChanged
		send: #deleteSystemClipboardTextAfterTimeout
		to: self
