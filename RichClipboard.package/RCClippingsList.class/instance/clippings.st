accessing
clippings
	| clippings |
	
	self belongsToContextMenu ifTrue: [
		clippings := self storage get: (RCContextMenu defaultSelectionSize min: self storage size)
	] ifFalse: [
		clippings := self storage getAll
	].
	clippings := self applyRegexFilter: clippings.
	clippings := self sort: clippings.
	
	^ clippings