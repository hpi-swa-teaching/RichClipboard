storage
add: clipboardEntry
	self storageBackend addFirst: clipboardEntry.
	self triggerEvent: #changedClipping with: clipboardEntry
