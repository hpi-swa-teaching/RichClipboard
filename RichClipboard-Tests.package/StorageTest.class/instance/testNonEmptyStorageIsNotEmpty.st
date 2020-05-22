testing
testNonEmptyStorageIsNotEmpty
	self storage add: 'Test'.
	self deny: self storage isEmpty