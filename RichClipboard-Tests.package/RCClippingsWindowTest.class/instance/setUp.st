running
setUp
	systemClipboard := RCSystemClipboardNullObject new.
	storage := RCStorage new.
	window := RCClippingsWindow newWithStorage: storage
										andSystemClipboard: systemClipboard