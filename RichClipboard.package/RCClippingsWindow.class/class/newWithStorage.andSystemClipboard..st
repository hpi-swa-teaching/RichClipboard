initialize-release
newWithStorage: rcStorage andSystemClipboard: aSystemClipboard
	| window |
	
	window := RCClippingsWindow basicNew.
	window storage: rcStorage.
	window systemClipboard: aSystemClipboard.
	window initialize.	
		
	^ window