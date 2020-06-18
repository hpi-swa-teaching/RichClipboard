destroy
removeFromWorldMenu
	(TheWorldMenu respondsTo: #registerOpenCommand:) ifTrue: [
		TheWorldMenu unregisterOpenCommand: RichClipboard defaultAppsMenuTitle
	]