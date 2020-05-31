regex
toggleRegexSearch
	self regexSearchBarVisible ifTrue: [ 
		self hideRegexSearchBar
	] ifFalse: [ 
		self showRegexSearchBar
	]