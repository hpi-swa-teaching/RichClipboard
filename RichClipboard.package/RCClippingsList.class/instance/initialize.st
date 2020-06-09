initialize-release
initialize
	super initialize.
	self borderWidth: 0.
	self contextMenuIsOpen: false.
	self selectedClippingIndex: 0.
	regexFilter := nil.
	self storage 
		when: #addedEntry 
		send: #addedEntry: 
		to: self
