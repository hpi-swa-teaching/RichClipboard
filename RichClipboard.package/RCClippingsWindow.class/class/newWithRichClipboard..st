initialize-release
newWithRichClipboard: richClipboard
	| window |
	
	window := RCClippingsWindow basicNew.
	window richClipboard: richClipboard.
	window initialize.
		
	^ window