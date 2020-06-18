destroy
removeFromWorldMenu
	(TheWorldMenu respondsTo: #registerOpenCommand:) ifTrue: [
		TheWorldMenu unregisterOpenCommandWithReceiver: self
	]