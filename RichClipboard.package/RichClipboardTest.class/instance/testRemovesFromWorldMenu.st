testing
testRemovesFromWorldMenu
	| richClipboardAppsMenuEntry |

	RichClipboard default removeFromWorldMenu.	

	richClipboardAppsMenuEntry := TheWorldMenu registry select: [ :entry |
		entry first = RichClipboard defaultAppsMenuTitle
	].
	self assert: richClipboardAppsMenuEntry isEmpty.
	
	RichClipboard default addToAppsWorldMenu