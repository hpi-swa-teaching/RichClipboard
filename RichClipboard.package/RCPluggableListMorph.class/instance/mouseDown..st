event handling
mouseDown: anEvent
	contextMenu ifNotNil: [
		contextMenu delete	
	].
	(anEvent buttons = 2) ifTrue: [
		| row |
		
		row := self rowAtLocation: anEvent position.
		contextMenu := MenuMorph new.
		contextMenu add: 'Delete' target: deleteCallbackObject selector: (self deleteCallback) argument: row.
		contextMenu openInWorld.
		contextMenu position: anEvent position
	] ifFalse: [
		self listMorph lastEventWasMouseEvent: true.
		self changeModelSelection: (self rowAtLocation: anEvent position).
	]

