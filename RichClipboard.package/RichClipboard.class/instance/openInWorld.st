initialization
openInWorld
	| window |
		
	window := RCClippingsWindow newWithRichClipboard: self.
	window
		when: #delete
		send: #windowClosed:
		to: self
		with: window.
	window openInWorld.
	self openWindows add: window.
	
	^ window