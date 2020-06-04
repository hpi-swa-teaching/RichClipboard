as yet unclassified
recentClippings
	| storage newStorageBackend |
	storage := self storage copy.
	(storage getAll size > 0)
		ifTrue: [
			(5 > storage getAll size)
				ifTrue: [ newStorageBackend := storage getAll ]
				ifFalse: [ newStorageBackend := storage get: 5]
		] ifFalse: [ RCInvalidParameterError signal ].
	
	storage storageBackend: newStorageBackend.
	^ storage
	
