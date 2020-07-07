private mode
startTimerRemoveFromClipboard
	(self storage privateModeActive) ifTrue: [
		self earliestDeletionTimeMS: (Time millisecondClockValue + removeFromClipboardTimeoutMS).
		(self future: removeFromClipboardTimeoutMS) removeFromClipboardIfUnchanged
	]