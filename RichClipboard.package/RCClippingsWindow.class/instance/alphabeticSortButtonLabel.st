sort-alphabetically
alphabeticSortButtonLabel
	^ self alphabeticSortInverted ifTrue: [
			'z-a'
		] ifFalse: [
			'a-z'
		]