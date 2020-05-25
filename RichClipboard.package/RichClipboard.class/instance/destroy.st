destroy
destroy
	Clipboard default removeActionsWithReceiver: self.
	self window removeActionsWithReceiver: self.
	self window delete