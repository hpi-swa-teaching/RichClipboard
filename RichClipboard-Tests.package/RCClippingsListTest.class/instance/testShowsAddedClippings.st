testing
testShowsAddedClippings
	| storage storageSize clippingsList |
	
	storage := RCStorage new.
	clippingsList := RCClippingsList newWithStorage: storage.
	
	storageSize := clippingsList submorphCount. 
	storage add: 'hallo'.
	storage add: 'world'.
	self assert: (storageSize < clippingsList submorphCount)