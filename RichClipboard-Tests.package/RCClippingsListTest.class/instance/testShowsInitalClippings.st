testing
testShowsInitalClippings
	| storageSize |
	
	storage add: 'hallo'.
	storage add: 'world'.
	
	storageSize := clippingsList clippings size. 
	self assert: (clippingsList clippings size = 2)