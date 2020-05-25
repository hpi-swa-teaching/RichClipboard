as yet unclassified
testShowsAddedClippings

	| storage storageSize clippingsList|
	clippingsList := RCClippingsList new.
	storage := RCStorage new.
	clippingsList storage: storage.
	storageSize := clippingsList size. 
	storage add: 'hallo'.
	storage add: 'world'.
	self assert: (storageSize > clippingsList size)