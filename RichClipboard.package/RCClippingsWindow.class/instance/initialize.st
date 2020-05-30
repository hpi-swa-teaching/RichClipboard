initialize-release
initialize
	| pluggableListMorph |
	
	super initialize.
	self setLabel: RCClippingsWindow defaultLabel.
	
	self clippingsList: (RCClippingsList newWithStorage: self storage).
	
	
	pluggableListMorph := RCPluggableListMorph newWithClippingsList: self clippingsList.
	self addMorph: pluggableListMorph frame: (0@0 corner: 1@1)