running
setUp
	systemClipboard := RCSystemClipboardNullObject new.
	storage := RCStorage new.
	clippingsList := RCClippingsList newWithStorage: storage
									 	andSystemClipboard: systemClipboard.
	
	storage add: '1';
	 		add: '2';
			add: '3';
	 		add: '4';
			add: '5';
			add: '6'
