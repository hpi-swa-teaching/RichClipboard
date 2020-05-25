as yet unclassified
testShowsAddedClippings

	| storage storageSize clippingsList|
	
	storage := RCStorage new.
	clippingsList := RCClippingsList newWithStorage: storage.
	
	storageSize := clippingsList size. 
	storage add: 'hallo'.
	storage add: 'world'.
	self assert: (storageSize > clippingsList size)