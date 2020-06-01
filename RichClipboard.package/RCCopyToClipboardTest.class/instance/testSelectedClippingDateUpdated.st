testing
testSelectedClippingDateUpdated
	| selected |
	selected := self rcclippings selectedClippingIndex: 1.
	self rcclippings addToClipboard: selected.
	"self assert: (selected date = current date)"

	