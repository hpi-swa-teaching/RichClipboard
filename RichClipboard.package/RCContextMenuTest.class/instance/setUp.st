running
setUp
	richClipboard := RichClipboard newTestInstance.
	systemClipboard := richClipboard systemClipboard.
	storage := richClipboard storage.
	editor := RCEditorNullObject new.
	contextMenu := richClipboard openContextMenu: editor.
	clippingsList := contextMenu clippingsList.
	
	storage add: '1';
	 		add: '2';
			add: '3';
	 		add: '4';
			add: '5';
			add: '6'
