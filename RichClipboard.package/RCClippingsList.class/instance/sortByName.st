sort
sortByName
	sortBlock := [ :aCollection | 
		(aCollection sorted: [ :a :b |
			(a asLowercase) <= (b asLowercase)
		]) 
	].
	self changed: #clippings