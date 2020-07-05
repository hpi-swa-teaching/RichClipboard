event handling
keyStroke: anEvent 
	self listMorph lastEventWasMouseEvent: false.
	super keyStroke: anEvent
