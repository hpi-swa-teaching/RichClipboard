initialize-release
addToWorldMenu
	"Adds an entry for Rich Clipboard to TheWorldMenu, which includes
	the 'Apps' Menu in the Docking Bar"
	(TheWorldMenu respondsTo: #registerOpenCommand:)
		ifTrue: [TheWorldMenu registerOpenCommand: {'Rich Clipboard'. {self window. #openInWorld}}]