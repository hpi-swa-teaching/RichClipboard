testing
testRightClickOnListItem
	| clippingsList pluggableListMorph event storage |
	
	storage := RCStorage new.
	clippingsList := RCClippingsList newWithRichClipboard: richClipboard.
	pluggableListMorph := RCPluggableListMorph newWithClippingsList: clippingsList.
	
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
	
	