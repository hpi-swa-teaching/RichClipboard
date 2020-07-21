testing
testSendsNotificationOnAddedItem
	| storageItem receivedClipping |
	
	storageItem :=  'Test1' .
	receivedClipping := nil.
	storage
		when: #clippingsChanged 
			send: #value
			to: [receivedClipping := (storage getAll first) asString];
	 	add: storageItem.
	self assert: (storageItem = receivedClipping)