accessing
moveToFirst: aClipping
	self storageBackend addFirst: aClipping.
	self triggerEvent: #addedEntry with: aClipping