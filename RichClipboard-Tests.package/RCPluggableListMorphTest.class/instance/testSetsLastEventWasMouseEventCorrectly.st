testing
testSetsLastEventWasMouseEventCorrectly
	| clippingsList pluggableListMorph event storage |
	
	storage := RCStorage new.
	clippingsList := RCClippingsList newWithStorage: storage
										andSystemClipboard: RCSystemClipboardNullObject.
	pluggableListMorph := RCPluggableListMorph newWithClippingsList: clippingsList.
	
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
	