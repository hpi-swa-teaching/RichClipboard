testing
testRightClickOnListItem
	| clippingsList pluggableListMorph event storage |
	
	storage := RCStorage new.
	clippingsList := RCClippingsList newWithStorage: storage
										andSystemClipboard: RCSystemClipboardNullObject.
	pluggableListMorph := RCPluggableListMorph newWithClippingsList: clippingsList deleteCallback: #removeAtIndex: on: storage.
	
	event := MouseEvent new 
				setType: #mouseDown
				position: pluggableListMorph center
				buttons: 2
				hand: RCHandNullObject new.
	self shouldnt: [ pluggableListMorph mouseDown: event ] raise: Error.
	event := MouseEvent new 
				setType: #mouseUp
				position: pluggableListMorph center
				buttons: 2
				hand: RCHandNullObject new.
	self shouldnt: [ pluggableListMorph mouseUp: event ] raise: Error.
	
	self shouldnt: [ pluggableListMorph closeItemMenuIfOpen ] raise: Error
	
	