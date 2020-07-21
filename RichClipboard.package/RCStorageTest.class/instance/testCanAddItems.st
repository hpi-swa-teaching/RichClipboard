testing
testCanAddItems
	self shouldnt: [ storage add: 'Test' ] raise: Error
	