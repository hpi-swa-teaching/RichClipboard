accessing
copyBackToClipboard: anIndex
	| selectedClipping |

	selectedClipping := self clippings at: anIndex.
	(self privateModeActive) ifFalse: [ 
		self storage remove: selectedClipping
	].
	self systemClipboard clipboardText: selectedClipping asString