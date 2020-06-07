sort
applySort: aCollection
	" Private "
	^ sortBlock ifNil: [ 
			aCollection 
		] ifNotNil: [ 
			sortBlock value: aCollection 
		]
