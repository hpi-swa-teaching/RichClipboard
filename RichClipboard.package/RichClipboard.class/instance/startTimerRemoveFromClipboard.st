private mode
startTimerRemoveFromClipboard
	| clipping |

	(self storage privateModeActive) ifTrue: [
		clipping := self systemClipboard clipboardText asString.
		(self future: removeFromClipboardTimeoutMS) removeFromClipboardIfUnchanged: clipping
	]