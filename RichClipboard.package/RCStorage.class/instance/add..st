storage
add: clipboardEntry
	self privateModeActive ifFalse: [
		self storageBackend addFirst: clipboardEntry.
		self triggerEvent: #changedClipping with: clipboardEntry
	]