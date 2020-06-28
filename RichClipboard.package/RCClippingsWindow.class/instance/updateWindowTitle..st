visual properties
updateWindowTitle: aString
	| title |
	
	title := self windowTitle. 
	(self privateModeActive) 
		ifTrue: [self windowTitle: self class defaultLabel, ' (private mode)']
		ifFalse: [self windowTitle: self class defaultLabel].
		
	self currentSortMode: aString.
	self windowTitle: title, aString.
	self setLabel: self windowTitle