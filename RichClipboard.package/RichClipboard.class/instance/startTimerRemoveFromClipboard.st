private mode
startTimerRemoveFromClipboard
	(self storage privateModeActive) ifTrue: [
		self earliestDeletionTimeMS: (Time millisecondClockValue + self class defaultRemoveFromClipboardTimeoutMS).
		(self future: self class defaultRemoveFromClipboardTimeoutMS) removeFromClipboardIfUnchanged
	]