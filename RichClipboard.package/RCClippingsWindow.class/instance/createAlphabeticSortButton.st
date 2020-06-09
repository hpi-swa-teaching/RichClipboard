sort-alphabetically
createAlphabeticSortButton
	| button |
	
	button := PluggableButtonMorphPlus
				on: self
				getState: #alphabeticSortButtonEnabled
				action: #toggleAlphabeticSort
				label: #alphabeticSortButtonLabel.
	button height: self class defaultBottomBarHeight - 4.
	
	^ button