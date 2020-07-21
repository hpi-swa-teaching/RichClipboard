accessing
clippingsAsStrings
	| clippings |
	
	clippings := self clippings.
	clippings := clippings collect: [ :clipping | clipping asString ].
	
	^ clippings