testing
testEmitsCtrlVPressed
	| contextMenu numEventEmitted |
	contextMenu := RCContextMenu new.
	
	numEventEmitted := 0.
	contextMenu when: #ctrlVPressed send: #value to: [ 
		numEventEmitted := numEventEmitted + 1
	].
	contextMenu keyStroke: (KeyboardEvent new keyValue: Character ctrlV; yourself).
	self assert: numEventEmitted = 1