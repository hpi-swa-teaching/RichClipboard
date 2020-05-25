as yet unclassified
testShowsInitalClippings

	| storage storageSize clippingsList|
	clippingsList := RCClippingsList new.
	storage := RCStorage new.
	storageSize := clippingsList size. 
	storage add: 'hallo'.
	storage add: 'world'.
	clippingsList storage: storage.
	self assert: (clippingsList size = 2)