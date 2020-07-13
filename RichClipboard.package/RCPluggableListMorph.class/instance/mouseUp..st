event handling
mouseUp: anEvent
	
	"(anEvent buttons = 2) ifTrue: [
		Transcript showln: 'up rightclick'
	] ifFalse: [
		self listMorph lastEventWasMouseEvent: true.
		super mouseUp: anEvent
	]"