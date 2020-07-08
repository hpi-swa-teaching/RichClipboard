initialize-release
newWithRichClipboard: aRichClipboard
	| contextMenu |
	
	contextMenu := RCContextMenu basicNew.
	contextMenu richClipboard: aRichClipboard.
	contextMenu initialize.	
		
	^ contextMenu
