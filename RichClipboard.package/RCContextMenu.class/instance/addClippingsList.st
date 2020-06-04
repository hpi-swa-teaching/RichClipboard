as yet unclassified
addClippingsList
	| listMorphFrame pluggableListMorph |
	listMorphFrame := LayoutFrame new.
	listMorphFrame leftFraction: 0;
		 rightFraction: 1;
		 topFraction: 0;
		 bottomFraction: 1;
		 bottomOffset: 0.
	pluggableListMorph := RCPluggableListMorph newWithClippingsList: self clippingsList.
	self addMorph: pluggableListMorph fullFrame: listMorphFrame