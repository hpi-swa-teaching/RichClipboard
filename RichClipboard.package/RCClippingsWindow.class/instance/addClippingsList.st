initialize-release
addClippingsList
	| listMorphFrame pluggableListMorph |
	listMorphFrame := LayoutFrame new.
	listMorphFrame leftFraction: 0;
		 rightFraction: 1;
		 topFraction: 0;
		 bottomFraction: 1;
		 bottomOffset: -1 * self class defaultBottomBarHeight.
	pluggableListMorph := RCPluggableListMorph newWithClippingsList: (self clippingsList) deleteCallback: #removeAt: on: (self clippingsList).
	self addMorph: pluggableListMorph fullFrame: listMorphFrame