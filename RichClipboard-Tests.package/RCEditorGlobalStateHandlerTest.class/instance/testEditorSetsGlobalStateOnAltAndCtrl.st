testing
testEditorSetsGlobalStateOnAltAndCtrl
	textMorph keyDown: self altDownEvent.
	self assert: RCEditorGlobalStateHandler altKeyDown.
	self assert: RCEditorGlobalStateHandler ctrlKeyDown not.
	
	textMorph keyDown: self ctrlDownEvent.
	self assert: RCEditorGlobalStateHandler altKeyDown.
	self assert: RCEditorGlobalStateHandler ctrlKeyDown.
	
	textMorph keyUp: self altUpEvent.
	self assert: RCEditorGlobalStateHandler altKeyDown not.
	self assert: RCEditorGlobalStateHandler ctrlKeyDown.
	
	textMorph keyUp: self ctrlUpEvent.
	self assert: RCEditorGlobalStateHandler altKeyDown not.
	self assert: RCEditorGlobalStateHandler ctrlKeyDown not