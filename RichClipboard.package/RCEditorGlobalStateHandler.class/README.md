An RCEditorGlobalStateHandler saves whether `crtl` and/or `alt` are being pressed. We need this class because the RCContextMenu is opened with `ctrl + alt + v` and Squeak doesn't provide (correct) information about whether both `crtl` and `alt` are being pressed simultaneously.

Class Variables  
	AltKeyDown:				<Boolean | nil>  
	CtrlKeyDown:				<Boolean | nil> 