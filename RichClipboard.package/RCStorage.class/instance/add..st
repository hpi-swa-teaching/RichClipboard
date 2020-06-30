storage
add: clipboardEntry
	(self privateModeActive) ifFalse: [
		(clipboardEntry = '') ifFalse: [
			self storageBackend addFirst: clipboardEntry.
			self triggerEvent: #clippingsChanged
		]
	]