accessing
copyBackToClipboard: Index
	| selectedClipping |
	
	selectedClipping := self clippings at: Index.
	self selectRow: Index.
	self selectionTextColor: Color blue.
	"TODO: noch delete später implementieren"
	self storage moveToFirst: selectedClipping.
	
	Clipboard clipboardText: selectedClipping.
	
	