accessing
clipboardText: aText
	clippings addFirst: aText asText.
	self triggerEvent: #contentChanged withArguments: { aText . nil }
	