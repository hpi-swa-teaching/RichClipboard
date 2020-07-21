running
setUp
	priorAlt := RCEditorGlobalStateHandler altKeyDown.
	priorCtrl := RCEditorGlobalStateHandler ctrlKeyDown.
	textMorph := TextMorph new.
	
	RCEditorGlobalStateHandler altKeyDown: false.
	RCEditorGlobalStateHandler ctrlKeyDown: false