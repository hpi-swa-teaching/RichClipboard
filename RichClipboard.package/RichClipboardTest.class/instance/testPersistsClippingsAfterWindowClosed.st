testing
testPersistsClippingsAfterWindowClosed
	| window1 window2 storage |
	
	window1 := richClipboard openInWorld.
	storage := richClipboard storage.
	storage add: 'bla bla bla';
					 add: 'bli bla bleb'.
	window1 delete.
	
	window2 := richClipboard openInWorld.
	self assert: window2 clippingsList clippings first = 'bli bla bleb'.
	self assert: window2 clippingsList clippings second = 'bla bla bla'