storage
add: clipboardEntry
	self privateModeActive ifFalse: [
		self storageBackend addFirst: (RCStorageItem new content: clipboardEntry).
		self triggerEvent: #clippingsChanged
	]