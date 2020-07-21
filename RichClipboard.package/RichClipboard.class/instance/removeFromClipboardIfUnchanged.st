private mode
removeFromClipboardIfUnchanged
	(self earliestDeletionTimeMS <= Time millisecondClockValue) ifTrue: [
		self systemClipboard clear
	]
