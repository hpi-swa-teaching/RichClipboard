visual properties
updateWindowTitle: aString
	| title |
	
	title := self windowTitle.
	self windowTitle: title, aString.
	self setLabel: self windowTitle