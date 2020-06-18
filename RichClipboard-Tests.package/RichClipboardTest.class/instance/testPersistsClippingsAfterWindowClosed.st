testing
testPersistsClippingsAfterWindowClosed
	| richClipboard1 richClipboard2 window1 window2 storage1 |
	
 	richClipboard1 := RichClipboard default.
	window1 := richClipboard1 openInWorld.
	storage1 := richClipboard1 storage.
	storage1 add: 'bla bla bla';
					  add: 'bli bla bleb'.
	window1 delete.
	
	richClipboard2 := RichClipboard default.
	window2 := richClipboard2 openInWorld.
	self assert: window2 clippingsList clippings first = 'bli bla bleb'.
	self assert: window2 clippingsList clippings second = 'bla bla bla'.
	storage1 remove: 'bla bla bla'.
	storage1 remove: 'bli bla bleb'