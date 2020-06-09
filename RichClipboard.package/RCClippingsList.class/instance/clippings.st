accessing
clippings
	| clippings |
	
	clippings := self storage getAll.
	self applyRegexFilter: clippings.
	
	^ self applySort: clippings