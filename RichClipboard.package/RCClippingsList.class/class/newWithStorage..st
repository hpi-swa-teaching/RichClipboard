initialize-release
newWithStorage: rcStorage
	|clippingsList|
	clippingsList := RCClippingsList basicNew.
	clippingsList storage: rcStorage.
	clippingsList initialize.
	^ clippingsList
