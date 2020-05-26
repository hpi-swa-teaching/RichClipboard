initialize-release
newWithStorage: rcStorage
	| window |
	
	window := RCClippingsWindow basicNew.
	window storage: rcStorage.
	window initialize.	
		
	^ window