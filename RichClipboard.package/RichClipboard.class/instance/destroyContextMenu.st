destroy
destroyContextMenu
	contextMenu ifNotNil: [ 
		contextMenu delete;
								   removeActionsForEvent: #requestPasteClipping.
		contextMenu := nil
	]


