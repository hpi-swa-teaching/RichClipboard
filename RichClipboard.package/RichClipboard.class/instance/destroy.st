destroy
destroy
	Clipboard default removeActionsWithReceiver: self.
	
	"must be unsubscribed before window delete because else would trigger an infinite loop"
	self openWindows copy do: [ :window | 
		window delete
	].
	self isTestInstance ifFalse: [
		self removeFromWorldMenu
	]