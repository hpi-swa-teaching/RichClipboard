running
setUp
	systemClipboard := RCSystemClipboardNullObject new.
	storage := RCStorage new.
	clippingsList := RCClippingsList newWithStorage: storage
																	andSystemClipboard: systemClipboard.
	
	storage add: '1'.
	storage add: '2'.
	storage add: '3'.
	storage add: '4'.
	storage add: '5'.
	storage add: '6'
