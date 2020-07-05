clear-all
createClearAllButton
	" Private "
	| button |
	
	button := PluggableButtonMorphPlus on: self
											getState: #clearAllButtonEnabled
											action: #clearAllEntries
											label: #clearAllButtonLabel.
	button height: self class defaultBottomBarHeight - 4.
	
	^ button