running
setUp
	systemClipboard := RCSystemClipboardNullObject new.
	storage := RCStorage new.
	clippingsList := RCClippingsList newWithStorage: storage
										andSystemClipboard: systemClipboard