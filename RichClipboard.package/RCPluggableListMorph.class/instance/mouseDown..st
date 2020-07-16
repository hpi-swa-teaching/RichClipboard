event handling
mouseDown: anEvent
	| row menu |
	
	self closeItemMenuIfOpen.
	(anEvent buttons = 2) ifTrue: [
		row := self rowAtLocation: anEvent position.
		
		menu := self  itemMenuFor: row.
		menu position: anEvent position.
		menu openInWorld
	] ifFalse: [
		self listMorph lastEventWasMouseEvent: true.
		self changeModelSelection: (self rowAtLocation: anEvent position).
	]

