sort
sortByNameInverse
	sortBlock := [ :aCollection | 
		(aCollection sorted: [ :a :b |
			(a asString asLowercase) <= (b asString asLowercase)
		]) reverse 
	].
	self changed: #clippings