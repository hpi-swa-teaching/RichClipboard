event handling
mouseUp: evt 
	self listMorph lastEventWasMouseEvent: true.
	super mouseUp: evt