storage
add: clipboardEntry
	self storageBackend addLast: clipboardEntry.
	self triggerEvent: #addedEntry with: clipboardEntry