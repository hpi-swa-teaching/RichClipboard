testing
testToggleSearchbar
	| storage window |
	
	storage := RCStorage new.
	window := RCClippingsWindow newWithStorage: storage.
	window toggleRegexSearch.
	self assert: window regexSearchBarVisible.
	window toggleRegexSearch.
	self assert: window regexSearchBarVisible not