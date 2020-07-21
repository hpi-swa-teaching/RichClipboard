sort
sortByName
	sortBlock := [ :aCollection | 
		(aCollection sorted: [ :a :b |
			(a asString asLowercase) <= (b asString asLowercase)
		]) 
	].
	self changed: #clippings