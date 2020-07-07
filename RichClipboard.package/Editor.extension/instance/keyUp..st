*RichClipboard
keyUp: anEvent
	anEvent keyValue = 17 ifTrue: [
		RCEditorGlobalStateHandler ctrlKeyDown: false
	].
	anEvent keyValue = 18 ifTrue: [
		RCEditorGlobalStateHandler altKeyDown: false
	]