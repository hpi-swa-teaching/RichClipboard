accessing
newStorageForRecentClippings: aNumber
	| storage newStorageBackend |
	
	storage := self copy.
	((storage getAll size) > 0)
		ifTrue: [
			(aNumber > storage getAll size)
				ifTrue: [ newStorageBackend := storage getAll ]
				ifFalse: [ newStorageBackend := storage get: aNumber]
		] ifFalse: [ newStorageBackend := storage getAll ].
	
	storage storageBackend: newStorageBackend.
	
	^ storage