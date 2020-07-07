private mode
removeFromClipboardIfUnchanged: originalClipping
	(originalClipping = self systemClipboard clipboardText asString) ifTrue: [
		self systemClipboard delete
	]
