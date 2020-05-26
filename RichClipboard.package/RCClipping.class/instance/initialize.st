initialize-release
initialize
	| stringMorph |
	
	super initialize.
	self borderWidth: 0.
	
	stringMorph := StringMorph new.
	stringMorph contents: self clipping asString.
	stringMorph position: RCClippingsList defaultHorizontalItemPadding @ RCClippingsList defaultVerticalItemPadding / 2.
	
	self addMorph: stringMorph.
	self height: stringMorph height + RCClippingsList defaultVerticalItemPadding