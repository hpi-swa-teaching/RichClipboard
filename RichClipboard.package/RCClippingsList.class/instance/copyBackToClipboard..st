accessing
copyBackToClipboard: anIndex
	| selectedClipping |

	selectedClipping := self clippings at: anIndex.
	(self isInPrivateMode) ifFalse: [ 
		self storage remove: selectedClipping
	].
	self systemClipboard clipboardText: selectedClipping asString