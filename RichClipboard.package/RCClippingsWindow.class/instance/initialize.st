initialize-release
initialize
	super initialize.
	
	self updateWindowTitle.
	self clippingsList: (RCClippingsList newWithStorage: self storage 
																			andSystemClipboard: systemClipboard).
		
	self addClippingsList.
	self addToolbar.
	self addToToolbar: self createClearAllButton.
	self addToToolbar: self createRegexSearchButton.
	self addToToolbar: self createDateSortButton.
	self addToToolbar: self createAlphabeticSortButton.
	self addToToolbar: self createPrivateModeButton