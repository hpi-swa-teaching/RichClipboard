*RichClipboard
keyDown: anEvent
	anEvent keyValue = 17 ifTrue: [
		RCEditorGlobalStateHandler ctrlKeyDown: true
	].
	anEvent keyValue = 18 ifTrue: [
		RCEditorGlobalStateHandler altKeyDown: true
	].
	(RCEditorGlobalStateHandler altKeyDown 
		and: [ RCEditorGlobalStateHandler ctrlKeyDown
		and: [ anEvent keyValue = $V asciiValue ]]) ifTrue: [
			RichClipboard default openContextMenu: self.
			RCEditorGlobalStateHandler ctrlKeyDown: false.
			RCEditorGlobalStateHandler altKeyDown: false
	]