regex
hideRegexSearchBar
	self regexSearchBarVisible ifTrue: [
		regexSearchBarMorph delete.
		self clippingsList removeFilterByRegex.
		regexSearchBarVisible := false
	]