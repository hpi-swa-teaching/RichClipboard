running
setUp
	storage := RCStorage new.
	rcclippings := RCClippingsList newWithStorage: storage.
	clipboard := Clipboard new.
	
	storage add: 'test1'.
	storage add: 'test2'.