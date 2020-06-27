testing
testSendsNotificationOnAddedItem
	| storageItem receivedClipping |
	
	storageItem :=  'Test1' .
	receivedClipping := nil.
	self storage
		when: #clippingsChanged 
		send: #value
		to: [receivedClipping := (storage getAll first) asString].
	self storage add: storageItem.
	self assert: (storageItem = receivedClipping)