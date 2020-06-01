accessing
clippings
	| clippings |
	
	clippings := self storage getAll.
	self applyRegexFilter: clippings.
	^ clippings