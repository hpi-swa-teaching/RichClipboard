accessing
regexSearchBarVisible: anObject
	| stateChanged |
	stateChanged := anObject ~= regexSearchBarVisible.
	regexSearchBarVisible := anObject.
	self regexSearchBarVisible
			ifTrue: [ self showRegexSearchBar	]
			ifFalse: [ self hideRegexSearchBar	]