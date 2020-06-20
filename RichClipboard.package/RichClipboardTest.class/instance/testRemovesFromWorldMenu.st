testing
testRemovesFromWorldMenu
	| richClipboardAppsMenuEntry |

	richClipboard addToAppsWorldMenu.
	richClipboard removeFromWorldMenu.
	richClipboardAppsMenuEntry := TheWorldMenu registry select: [ :entry |
		entry first = (RichClipboard defaultAppsMenuTitle: true)
	].
	self assert: richClipboardAppsMenuEntry isEmpty.