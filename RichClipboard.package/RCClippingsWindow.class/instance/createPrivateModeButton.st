private mode
createPrivateModeButton
	| button |
	
	button := PluggableButtonMorphPlus
				on: self
				getState: #privateModeButtonEnabled
				action: #togglePrivateMode
				label: #privateModeButtonLabel.
	button height: self class defaultBottomBarHeight - 4.
	^ button
