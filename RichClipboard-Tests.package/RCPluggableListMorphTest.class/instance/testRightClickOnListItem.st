testing
testRightClickOnListItem
	| event |

	event := MouseEvent new 
				setType: #mouseDown
				position: pluggableListMorph center
				buttons: 2
				hand: RCHandMockObject new.
	self shouldnt: [ pluggableListMorph mouseDown: event ] raise: Error.
	event := MouseEvent new 
				setType: #mouseUp
				position: pluggableListMorph center
				buttons: 2
				hand: RCHandMockObject new.
	self shouldnt: [ pluggableListMorph mouseUp: event ] raise: Error.
	
	self shouldnt: [ pluggableListMorph closeItemMenuIfOpen ] raise: Error