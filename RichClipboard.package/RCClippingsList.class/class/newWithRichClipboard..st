initialize-release
newWithRichClipboard: aRichClipboard
	| clippingsList |
	
	clippingsList := RCClippingsList basicNew.
	clippingsList richClipboard: aRichClipboard.
	clippingsList initialize.
	
	^ clippingsList
