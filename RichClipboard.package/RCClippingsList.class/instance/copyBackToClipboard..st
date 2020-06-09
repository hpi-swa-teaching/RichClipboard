accessing
copyBackToClipboard: Index
	| selectedClipping |
	
	selectedClipping := self clippings at: Index.
	"TODO: Test auf Private Mode, nur wenn false, dann remove (Warten noch auf PR)"
	(self isInPrivateMode) ifFalse: [ self storage remove: selectedClipping. ].
	Clipboard clipboardText: selectedClipping.
	
	