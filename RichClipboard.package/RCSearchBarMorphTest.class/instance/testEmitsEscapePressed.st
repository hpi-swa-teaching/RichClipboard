testing
testEmitsEscapePressed
	| searchBarMorph numEventEmitted |
	searchBarMorph := RCSearchBarMorph new.
	
	numEventEmitted := 0.
	searchBarMorph when: #escapePressed send: #value to: [ 
		numEventEmitted := numEventEmitted + 1
	].
	searchBarMorph keyStroke: (KeyboardEvent new keyValue: Character escape; yourself).
	self assert: numEventEmitted = 1