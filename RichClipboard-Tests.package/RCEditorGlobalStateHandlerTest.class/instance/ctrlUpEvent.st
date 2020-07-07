keyboard events
ctrlUpEvent
	^ KeyboardEvent new
			setType: #keyUp
			buttons: 0
			position: textMorph center
			keyValue: 17
			hand: nil
			stamp: nil