as yet unclassified
openInWorld
	super openInWorld.
	self extent: self class defaultExtent.
	self clippingsList: (RCClippingsList newWithStorage: (self recentClippings: 5)).
	self addClippingsList.
	self clippingsList contextMenuIsOpen: true