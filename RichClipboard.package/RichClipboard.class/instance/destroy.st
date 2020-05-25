destroy
destroy
	Clipboard default removeActionsWithReceiver: self.
	
	"must be unsubscribed before window delete because else would trigger an infinite loop"
	self window removeActionsWithReceiver: self.
	self window delete