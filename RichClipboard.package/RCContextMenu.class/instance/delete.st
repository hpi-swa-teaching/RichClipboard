open/close
delete
	super delete.
	self triggerEvent: #delete.
	self clippingsList contextMenuIsOpen: false
