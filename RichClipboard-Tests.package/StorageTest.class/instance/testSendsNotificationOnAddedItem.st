testing
testSendsNotificationOnAddedItem

	| storageItem receivedClipping|
	storageItem :=  'Test1' .
	receivedClipping := nil.
	self storage when: #addedEntry send: #value: to: [:clipping | receivedClipping := clipping].
	self storage add: storageItem.
	self assert: (storageItem = receivedClipping)
	
	