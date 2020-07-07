sort
sort: aCollection
	" Private "
	^ sortBlock ifNil: [ 
			aCollection 
		] ifNotNil: [ 
			sortBlock value: aCollection 
		]
