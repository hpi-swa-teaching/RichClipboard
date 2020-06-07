as yet unclassified
delete
	super delete.
	self triggerEvent: #delete.
	self clippingsList contextMenuIsOpen: false