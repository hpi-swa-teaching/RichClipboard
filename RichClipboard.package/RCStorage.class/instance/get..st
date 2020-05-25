storage
get: entryAmount
	entryAmount isInteger ifFalse: [ RCInvalidParameterError signal ].
	entryAmount < 0 ifTrue: [ RCInvalidParameterError signal ].
	entryAmount > self size ifTrue: [ RCOutOfBoundsError signal ].
	
	^ self storageBackend last: entryAmount