accessing
deleteSystemClipboardTextAfterTimeout
	(self isInPrivateMode) ifTrue: [
		(systemClipboard future: self timeoutMS) clipboardText: ''
	]