accessing
clippings
	| clippings |
	
	clippings := self storage getAll.
	clippings := self applyRegexFilter: clippings.
	clippings := self sort: clippings.
	
	^ clippings