initialize-release
initialize
	super initialize.
	self setLabel: self class defaultLabel.
	self clippingsList: (RCClippingsList newWithRichClipboard: richClipboard).
	self addClippingsList.
	self clippingsList belongsToContextMenu: true