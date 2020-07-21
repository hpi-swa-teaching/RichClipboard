storage
remove: aClipping
	self storageBackend remove: aClipping.
	self triggerEvent: #clippingsChanged
