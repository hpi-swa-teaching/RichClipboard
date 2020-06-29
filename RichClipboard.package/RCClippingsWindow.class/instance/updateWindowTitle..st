visual properties
updateWindowTitle: aString
	| title |

	self currentSortMode: aString.
	(self privateModeActive) 
		ifTrue: [self windowTitle: self class defaultLabel, ' (private mode)']
		ifFalse: [self windowTitle: self class defaultLabel].

	title := self windowTitle.	
	self windowTitle: title, aString.
	self setLabel: self windowTitle