testing
testCanAddItems
	self shouldnt: [self storage add: 'Test'.] raise: Error
	