storage
add: clipboardEntry
	self privateModeActive ifFalse: [
		self storageBackend addLast: clipboardEntry.
		self triggerEvent: #addedEntry with: clipboardEntry
	]