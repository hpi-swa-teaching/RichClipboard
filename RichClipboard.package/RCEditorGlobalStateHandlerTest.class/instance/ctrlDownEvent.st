keyboard events
ctrlDownEvent
	^ KeyboardEvent new
			setType: #keyDown
			buttons: 0
			position: textMorph center
			keyValue: 17
			hand: nil
			stamp: nil