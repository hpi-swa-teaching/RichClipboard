testing
testSelectedClippingVisuallyHighlighted
	| index |
	index := 1.
	self rcclippings copyBackToClipboard: index.
	"Transcript showln: (self rcclippings colorForRow: index)."
	self assert: ((self rcclippings colorForRow: index) = Color blue)