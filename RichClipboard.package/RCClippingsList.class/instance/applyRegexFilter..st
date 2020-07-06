regex
applyRegexFilter: aCollection
	"Private"
	regexFilter ifNotNil: [
		aCollection removeAllSuchThat: [ :clipping | 
			(regexFilter matches: clipping asString) not
		]
	].

	^ aCollection