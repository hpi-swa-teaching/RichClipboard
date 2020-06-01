initialize-release
addToAppsWorldMenu
	(TheWorldMenu respondsTo: #registerOpenCommand:)
		ifTrue: [TheWorldMenu registerOpenCommand: {'Rich Clipboard'. {self window. #openInWorld}}]