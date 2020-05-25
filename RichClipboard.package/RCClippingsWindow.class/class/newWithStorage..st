as yet unclassified
newWithStorage: rcStorage
	| window |
	window := RCClippingsWindow basicNew.
	window storage: rcStorage.
	window initialize.	
	^ window