testing
testSelectedClippingVisuallyHighlighted
	| selectedItem index |
	index := 1.
	selectedItem := self rcclippings selectedClippingIndex: index.
	self rcclippings addToClipboard: selectedItem.
	self rcclippings selectRow: index.
	self rcclippings selectionColor: Color blue.
	self assert: ((self rcclippings colorForRow: index) = Color blue)