keyboard events
altDownEvent
	^ KeyboardEvent new
			setType: #keyDown
			buttons: 0
			position: textMorph center
			keyValue: 18
			hand: nil
			stamp: nil