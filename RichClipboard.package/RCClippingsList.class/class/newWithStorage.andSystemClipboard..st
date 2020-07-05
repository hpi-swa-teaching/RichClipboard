initialize-release
newWithStorage: rcStorage andSystemClipboard: aSystemClipboard
	| clippingsList |
	
	clippingsList := RCClippingsList basicNew.
	clippingsList storage: rcStorage.
	clippingsList systemClipboard: aSystemClipboard.
	clippingsList initialize.
	
	^ clippingsList
