regex
showRegexSearchBar
	"Private"
	| frame |
	regexSearchBarMorph := RCSearchBarMorph new.
	regexSearchBarMorph when: #returnPressed
											send: #filterByRegex:
											to: self clippingsList.
	
	
	frame := LayoutFrame new.
	frame
		leftFraction: 0;
		rightFraction: 1;
		topFraction: 1;
		bottomFraction: 1;
		bottomOffset: -1 * self class defaultBottomBarHeight;
		topOffset: -2 * self class defaultBottomBarHeight.
		
	self addMorph: regexSearchBarMorph fullFrame: frame