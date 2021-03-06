testing
testPersistsClippingsAfterWindowClosed
	| window1 window2 storage |
	
	window1 := richClipboard openInWorld.
	storage := richClipboard storage.
	storage add: 'bla bla bla';
		      add: 'bli bla bleb'.
	window1 delete.
	
	window2 := richClipboard openInWorld.
	self assert: window2 clippingsList clippingsAsStrings first = 'bli bla bleb';
		 assert: window2 clippingsList clippingsAsStrings second = 'bla bla bla'