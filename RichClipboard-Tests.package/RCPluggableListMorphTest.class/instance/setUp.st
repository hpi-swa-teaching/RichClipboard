running
setUp
	| window |
	
	richClipboard := RichClipboard newTestInstance.
	window := richClipboard openInWorld.
	clippingsList := window clippingsList.
	pluggableListMorph := window pluggableListMorph