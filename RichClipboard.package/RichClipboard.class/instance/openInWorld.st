initialization
openInWorld
	| window |
		
	window := (RCClippingsWindow newWithStorage: self storage).
	window
		when: #delete
		send: #windowClosed:
		to: self
		with: window.
	window openInWorld.
	self openWindows add: window.
	
	^ window