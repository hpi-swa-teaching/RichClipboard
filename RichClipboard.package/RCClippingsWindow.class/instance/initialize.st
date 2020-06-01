initialize-release
initialize
	super initialize.
	self setLabel: self class defaultLabel.
	self
		clippingsList: (RCClippingsList newWithStorage: self storage).
	self addClippingsList.
	self addToolbar.
	self addToToolbar: self createRegexSearchButton