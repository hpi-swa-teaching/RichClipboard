*RichClipboard
paste: aKeyboardEvent 
	"Replace the current text selection by the text in the shared buffer."

	self insertAndCloseTypeIn.
	"self paste."
	self selectedClipping.
	
	^true