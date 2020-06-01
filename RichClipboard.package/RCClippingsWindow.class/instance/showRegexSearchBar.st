regex
showRegexSearchBar
	| frame |
	self regexSearchBarVisible
		ifFalse: [regexSearchBarMorph := RCSearchBarMorph new.
			regexSearchBarMorph
				when: #returnPressed
				send: #filterByRegex:
				to: self clippingsList.
			regexSearchBarMorph
				when: #escapePressed
				send: #hideRegexSearchBar
				to: self.
			frame := LayoutFrame new.
			frame leftFraction: 0;
				 rightFraction: 1;
				 topFraction: 1;
				 bottomFraction: 1;
				 bottomOffset: -1 * self class defaultBottomBarHeight;
				 topOffset: -2 * self class defaultBottomBarHeight.
			self addMorph: regexSearchBarMorph fullFrame: frame.
			regexSearchBarVisible := true]