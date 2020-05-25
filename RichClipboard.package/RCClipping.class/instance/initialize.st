initialize-release
initialize
	| stringMorph |
	super initialize.
	
	stringMorph := StringMorph new.
	stringMorph contents: self clipping asString.
	stringMorph position: RCClippingsList defaultHorizontalItemPadding @ RCClippingsList defaultVerticalItemPadding / 2.
	self addMorph: stringMorph.
	self height: stringMorph height + RCClippingsList defaultVerticalItemPadding.
	
	
	self borderWidth: 0