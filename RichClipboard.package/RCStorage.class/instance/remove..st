accessing
remove: aClipping
	self storageBackend remove: aClipping.
	self triggerEvent: #changedClipping with: aClipping
