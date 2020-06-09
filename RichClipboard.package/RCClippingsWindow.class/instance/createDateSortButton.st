sort-date
createDateSortButton
	| button |
	
	button := PluggableButtonMorphPlus
				on: self
				getState: #dateSortButtonEnabled
				action: #toggleDateSort
				label: #dateSortButtonLabel.
	button height: self class defaultBottomBarHeight - 4.
	
	^ button