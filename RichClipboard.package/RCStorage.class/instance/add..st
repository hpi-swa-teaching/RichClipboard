storage
add: clipboardEntry
	self storageBackend addFirst: clipboardEntry.
	self triggerEvent: #addedEntry with: clipboardEntry