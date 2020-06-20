initialization
openInWorld
	| window |
		
	window := (RCClippingsWindow newWithStorage: self storage
																		andSystemClipboard: self systemClipboard).
	window
		when: #delete
		send: #windowClosed:
		to: self
		with: window.
	window openInWorld.
	self openWindows add: window.
	
	^ window