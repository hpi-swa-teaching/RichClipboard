testing
testShowsInitalClippings
	| storage storageSize clippingsList |
	
	storage := RCStorage new.
	storage add: 'hallo'.
	storage add: 'world'.
	
	clippingsList := RCClippingsList newWithStorage: storage.
	
	storageSize := clippingsList clippings size. 
	self assert: (clippingsList clippings size = 2)