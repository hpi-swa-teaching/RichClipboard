testing
testShowsInitalClippings
	| storage storageSize clippingsList |
	
	storage := RCStorage new.
	storage add: 'hallo'.
	storage add: 'world'.
	
	clippingsList := RCClippingsList newWithStorage: storage.
	
	storageSize := clippingsList submorphCount. 
	self assert: (clippingsList submorphCount = 2)