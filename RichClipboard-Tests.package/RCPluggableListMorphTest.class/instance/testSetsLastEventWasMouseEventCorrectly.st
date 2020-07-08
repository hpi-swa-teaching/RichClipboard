testing
testSetsLastEventWasMouseEventCorrectly
	| event |
	
	event := KeyboardEvent new
			setType: #keyStroke
			buttons: 0
			position: pluggableListMorph center
			keyValue: $c asciiValue
			hand: nil
			stamp: nil.
	pluggableListMorph keyStroke: event.
	self assert: clippingsList lastEventWasMouseEvent not.
	
	event := MouseEvent new 
				setType: #mouseDown
				position: pluggableListMorph center
				buttons: 0
				hand: RCHandNullObject new.
	pluggableListMorph mouseDown: event.
	event := MouseEvent new 
				setType: #mouseUp
				position: pluggableListMorph center
				buttons: 0
				hand: RCHandNullObject new.
	pluggableListMorph mouseUp: event.
	self assert: clippingsList lastEventWasMouseEvent
	