initialize-release
newWithStorage: rcStorage andSystemClipboard: aSystemClipboard
	| contextMenu |
	
	contextMenu := RCContextMenu basicNew.
	contextMenu storage: rcStorage.
	contextMenu systemClipboard: aSystemClipboard.
	contextMenu initialize.	
		
	^ contextMenu
