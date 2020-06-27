testing
testToggleSearchbar
	window toggleRegexSearch.
	self assert: window regexSearchBarVisible.
	
	window toggleRegexSearch.
	self assert: window regexSearchBarVisible not