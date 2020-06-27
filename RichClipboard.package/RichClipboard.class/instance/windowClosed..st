destroy
windowClosed: window
	self openWindows remove: window.
	window removeActionsWithReceiver: self