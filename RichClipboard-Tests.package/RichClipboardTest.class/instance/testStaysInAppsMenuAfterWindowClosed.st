testing
testStaysInAppsMenuAfterWindowClosed
	| window richClipboardAppsMenuEntry |
	
	richClipboard addToAppsWorldMenu.
	window := richClipboard openInWorld.
	window delete.
	
	richClipboardAppsMenuEntry := TheWorldMenu registry select: [ :entry |
		entry first = (RichClipboard defaultAppsMenuTitle: true)
	].

	self assert: richClipboardAppsMenuEntry isEmpty not