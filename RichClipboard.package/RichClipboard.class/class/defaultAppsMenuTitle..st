settings
defaultAppsMenuTitle: isTestInstance
	^ 'Rich Clipboard', (isTestInstance ifTrue: [ ' Test' ] ifFalse: [ '' ])