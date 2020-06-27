event handling
keyStroke: evt 
	self listMorph lastEventWasMouseEvent: false.
	super keyStroke: evt 