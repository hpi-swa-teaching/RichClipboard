initialize-release
initialize
	super initialize.
	
	self updateWindowTitle.
	self clippingsList: (RCClippingsList newWithStorage: self storage).
		
	self addClippingsList.
	self addToolbar.
	self addToToolbar: self createRegexSearchButton.
	self addToToolbar: self createDateSortButton.
	self addToToolbar: self createAlphabeticSortButton.
	self addToToolbar: self createPrivateModeButton