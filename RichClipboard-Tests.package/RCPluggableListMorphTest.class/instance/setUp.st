running
setUp
	richClipboard := RichClipboard newTestInstance.
	clippingsList := RCClippingsList newWithRichClipboard: 	richClipboard.
	pluggableListMorph := RCPluggableListMorph newWithClippingsList: clippingsList