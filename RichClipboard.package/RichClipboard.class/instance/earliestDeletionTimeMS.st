accessing
earliestDeletionTimeMS
	^ earliestDeletionTimeMS ifNil: [ earliestDeletionTimeMS := Time millisecondClockValue ]