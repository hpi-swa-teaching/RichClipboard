initialize-release
newWithStorage: rcStorage
	| contextMenu |
	
	contextMenu := RCContextMenu basicNew.
	contextMenu storage: rcStorage.
	contextMenu initialize.	
		
	^ contextMenu
