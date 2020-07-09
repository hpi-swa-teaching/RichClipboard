as yet unclassified
newWithRichClipboard: aRichClipboard
	| storage |
	
	storage := RCStorage basicNew.
	storage richClipboard: aRichClipboard.
	storage initialize.
	
	^ storage