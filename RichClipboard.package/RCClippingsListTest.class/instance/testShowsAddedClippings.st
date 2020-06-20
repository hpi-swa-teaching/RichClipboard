testing
testShowsAddedClippings
	| storageSize |

	storageSize := clippingsList clippings size. 
	storage add: 'hallo'.
	storage add: 'world'.
	self assert: (storageSize < clippingsList clippings size)