accessing
clippings
	| clippings |
	
	clippings := self storage getAll.
	regexFilter ifNotNil: [
		clippings removeAllSuchThat: [ :clipping | 
			(clipping matchesRegex: regexFilter) not
		]
	].
	^ clippings