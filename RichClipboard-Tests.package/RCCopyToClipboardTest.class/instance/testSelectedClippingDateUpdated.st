testing
testSelectedClippingDateUpdated
	| selected clippings selectedClipping |
	clippings :=  self rcclippings.
	"Transcript showln: clippings clippings."
	selected := 2.
	selectedClipping := clippings clippingsAt: selected.
	clippings copyBackToClipboard: selected.
	"Transcript showln: clippings clippings.
	Transcript showln: (clippings clippingsAt: 1).
	Transcript showln: selectedClipping."
	self assert: ((clippings clippingsAt: 1) = selectedClipping)

	