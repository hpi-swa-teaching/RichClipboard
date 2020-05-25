as yet unclassified
testViewClippings
	
	| storage window storageSize|
	storage := RCStorage new.
	window := RCClippingsWindow newWithStorage: storage.
	storageSize := window clippingsList size. 
	self assert: (storageSize = 0).
	storage add: 'hallo'.
	storage add: 'world'.
	storageSize := window clippingsList size. 
	self assert: (storageSize = 2)

	