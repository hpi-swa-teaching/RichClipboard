destroy
destroyContextMenu
	contextMenu ifNotNil: [ 
		contextMenu delete.
		contextMenu removeActionsForEvent: #requestPasteClipping.
		contextMenu := nil
	]


