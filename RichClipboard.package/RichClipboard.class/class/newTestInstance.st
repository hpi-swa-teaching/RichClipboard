instance creation
newTestInstance
	| testInstance |
	
	testInstance := RichClipboard basicNew.
	testInstance makeTestInstance.
	testInstance initialize.
	
	^ testInstance