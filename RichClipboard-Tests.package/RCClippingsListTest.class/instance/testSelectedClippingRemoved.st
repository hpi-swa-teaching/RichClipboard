testing
testSelectedClippingRemoved
	| selected clippingsList storage |
	
	storage := RCStorage new.
	clippingsList := RCClippingsList newWithStorage: storage.
	clippingsList isInPrivateMode: false.
	
	storage add: 'test1'.
	storage add: 'test2'.
	
	selected := 2.
	clippingsList copyBackToClipboard: selected.
	"The item is added after back this method has finished 
	 executing (through the default Clipboard event listener)"
	self assert: ((clippingsList clippings size) = 1)