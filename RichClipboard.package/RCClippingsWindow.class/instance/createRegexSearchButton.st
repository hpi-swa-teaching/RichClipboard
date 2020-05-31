regex
createRegexSearchButton
	| button |
	
	button :=  PluggableButtonMorphPlus on: self
														getState: #regexSearchButtonEnabled 
														action: #toggleRegexSearch 
														label: #regexSearchButtonLabel.
	button height: self class defaultBottomBarHeight - 4.
	^ button