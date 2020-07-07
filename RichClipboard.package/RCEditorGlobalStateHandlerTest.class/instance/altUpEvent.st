keyboard events
altUpEvent
	^ KeyboardEvent new
			setType: #keyUp
			buttons: 0
			position: textMorph center
			keyValue: 18
			hand: nil
			stamp: nil