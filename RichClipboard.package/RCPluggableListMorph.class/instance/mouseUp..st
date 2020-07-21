event handling
mouseUp: anEvent
	self listMorph lastEventWasMouseEvent: true.
	super mouseUp: anEvent
