testing
testStaysInAppsMenuAfterWindowClosed
	| richClipboard window richClipboardAppsMenuEntry |
	
	richClipboard := RichClipboard default.
	window := richClipboard openInWorld.
	window delete.
	
	richClipboardAppsMenuEntry := TheWorldMenu registry select: [ :entry |
		entry first = RichClipboard defaultAppsMenuTitle
	].

	self assert: richClipboardAppsMenuEntry isNil not