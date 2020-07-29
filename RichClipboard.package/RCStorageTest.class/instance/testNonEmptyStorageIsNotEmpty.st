testing
testNonEmptyStorageIsNotEmpty
	storage add: 'Test'.
	self deny: storage isEmpty