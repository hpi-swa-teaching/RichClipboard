display
update
	| nextY |
	
	self removeAllMorphs.
	
	nextY := RCClippingsList defaultVerticalItemPadding.
	self storage getAll do: [ :clipping |
		| clippingMorph |
		
		clippingMorph := (RCClipping newForClipping: clipping).
		clippingMorph position: RCClippingsList defaultHorizontalItemPadding @ nextY.
		clippingMorph width:  (self width - (2 * (RCClippingsList defaultHorizontalItemPadding))).
		self addMorphBack: clippingMorph.
		
		nextY := nextY + clippingMorph height + RCClippingsList defaultVerticalItemPadding
	].

	self height: nextY