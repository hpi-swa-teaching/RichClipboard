sort
sortByNameInverse
	sortBlock := [ :aCollection | 
		(aCollection sorted: [ :a :b |
			(a asLowercase) <= (b asLowercase)
		]) reverse 
	].
	self changed: #clippings