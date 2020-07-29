instance creation
newWithRichClipboard: aRichClipboard
	| storage |
	
	storage := RCStorage basicNew.
	storage richClipboard: aRichClipboard;
				 	initialize.
	
	^ storage