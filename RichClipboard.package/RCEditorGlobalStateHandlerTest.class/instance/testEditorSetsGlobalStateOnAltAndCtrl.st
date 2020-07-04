testing
testEditorSetsGlobalStateOnAltAndCtrl
	| priorAlt priorCtrl textMorph |
	
	priorAlt := RCEditorGlobalStateHandler altKeyDown.
	priorCtrl := RCEditorGlobalStateHandler ctrlKeyDown.
	
	RCEditorGlobalStateHandler altKeyDown: false.
	RCEditorGlobalStateHandler ctrlKeyDown: false.
	textMorph := TextMorph new.
	
	textMorph keyDown: (KeyboardEvent new
			setType: #keyDown
			buttons: 0
			position: textMorph center
			keyValue: 17
			hand: nil
			stamp: nil).
	self assert: RCEditorGlobalStateHandler altKeyDown not.
	self assert: RCEditorGlobalStateHandler ctrlKeyDown.
	
	textMorph keyDown: (KeyboardEvent new
			setType: #keyDown
			buttons: 0
			position: textMorph center
			keyValue: 18
			hand: nil
			stamp: nil).
	self assert: RCEditorGlobalStateHandler altKeyDown.
	self assert: RCEditorGlobalStateHandler ctrlKeyDown.
	
	textMorph keyUp: (KeyboardEvent new
			setType: #keyUp
			buttons: 0
			position: textMorph center
			keyValue: 17
			hand: nil
			stamp: nil).
	self assert: RCEditorGlobalStateHandler altKeyDown.
	self assert: RCEditorGlobalStateHandler ctrlKeyDown not.
	
	
	textMorph keyUp: (KeyboardEvent new
			setType: #keyUp
			buttons: 0
			position: textMorph center
			keyValue: 18
			hand: nil
			stamp: nil).
	self assert: RCEditorGlobalStateHandler altKeyDown not.
	self assert: RCEditorGlobalStateHandler ctrlKeyDown not.
	
	RCEditorGlobalStateHandler altKeyDown: priorAlt.
	RCEditorGlobalStateHandler ctrlKeyDown: priorCtrl