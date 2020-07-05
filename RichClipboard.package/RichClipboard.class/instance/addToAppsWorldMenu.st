initialize-release
addToAppsWorldMenu
	(TheWorldMenu respondsTo: #registerOpenCommand:)
		ifTrue: [ 
			TheWorldMenu registerOpenCommand: { 
				RichClipboard defaultAppsMenuTitle: self isTestInstance .
				{ self . #openInWorld } } 
		]