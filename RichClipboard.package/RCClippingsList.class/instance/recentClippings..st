accessing
recentClippings: aNumber 
	| clippings |
	clippings := self storage get: aNumber.
	^ clippings