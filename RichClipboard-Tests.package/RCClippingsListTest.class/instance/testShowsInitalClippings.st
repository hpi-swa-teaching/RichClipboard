as yet unclassified
testShowsInitalClippings

	| storage storageSize clippingsList|
	
	storage := RCStorage new.
	storage add: 'hallo'.
	storage add: 'world'.
	
	clippingsList := RCClippingsList newWithStorage: storage.
	
	storageSize := clippingsList size. 
	self assert: (clippingsList size = 2)