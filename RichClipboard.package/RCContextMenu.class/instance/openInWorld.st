open/close
openInWorld
	super openInWorld.
	self extent: self class defaultExtent.
	self clippingsList: (RCClippingsList newWithStorage: (self recentClippings: 5)
																		andSystemClipboard: systemClipboard).
	self addClippingsList.
	self clippingsList contextMenuIsOpen: true
