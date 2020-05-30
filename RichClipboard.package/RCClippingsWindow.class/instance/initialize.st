initialize-release
initialize
	| pluggableListMorph listMorphFrame pluggablePanel pluggablePanelFrame |
	
	super initialize.
	regexSearchBarVisible := false.
	self setLabel: self class defaultLabel.
	
	self clippingsList: (RCClippingsList newWithStorage: self storage).
	
	listMorphFrame := LayoutFrame new.
	listMorphFrame 
			leftFraction: 0;
			rightFraction: 1;
			topFraction: 0;
			bottomFraction: 1;
			bottomOffset: -1 * self class defaultBottomBarHeight.
	
	pluggableListMorph := RCPluggableListMorph newWithClippingsList: self clippingsList.
	self addMorph: pluggableListMorph fullFrame: listMorphFrame.
	
	pluggablePanelFrame := LayoutFrame new.
	pluggablePanelFrame
		leftFraction: 0;
		rightFraction: 1;
		topFraction: 1;
		bottomFraction: 1;
		topOffset: -1 * self class defaultBottomBarHeight.
		
	pluggablePanel := PluggablePanelMorph new.
	pluggablePanel color: Color white.
	pluggablePanel borderColor: Color black.
	pluggablePanel borderWidth: 1.
	pluggablePanel addMorph: ((PluggableButtonMorphPlus 
													on: self
													getState: #regexSearchButtonEnabled 
													action: #toggleRegexSearch 
													label: #regexSearchButtonLabel)
														height: self class defaultBottomBarHeight - 4;
														yourself).
	
	
	self addMorph: pluggablePanel fullFrame: pluggablePanelFrame