running
setUp
	storage := RCStorage new.
	rcclippings := RCClippingsList newWithStorage: storage.
	rcclippings canCopy.
	clipboard := Clipboard default.
	
	storage add: 'test1'.
	storage add: 'test2'.