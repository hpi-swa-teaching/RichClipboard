testing
testEmitsReturnPressed
	| searchBarMorph numEventEmitted |
	searchBarMorph := RCSearchBarMorph new.
	
	numEventEmitted := 0.
	searchBarMorph when: #returnPressed send: #value to: [ 
		numEventEmitted := numEventEmitted + 1
	].
	searchBarMorph keyStroke: (KeyboardEvent new keyValue: Character enter; yourself).
	searchBarMorph keyStroke: (KeyboardEvent new keyValue: Character cr; yourself).
	searchBarMorph keyStroke: (KeyboardEvent new keyValue: Character lf; yourself).
	self assert: numEventEmitted = 3