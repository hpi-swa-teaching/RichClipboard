accessing
removeAll
	self storageBackend removeAll.
	self triggerEvent: #clippingsChanged