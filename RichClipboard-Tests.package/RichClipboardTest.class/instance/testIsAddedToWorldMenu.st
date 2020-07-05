testing
testIsAddedToWorldMenu
	| richClipboardAppsMenuEntry |

	richClipboard addToAppsWorldMenu.
	richClipboardAppsMenuEntry := TheWorldMenu registry select: [ :entry |
		entry first = (RichClipboard defaultAppsMenuTitle: true)
	].
	self assert: richClipboardAppsMenuEntry isEmpty not