running
setUp
	self storage: RCStorage new.
	self clippingsList: RCClippingsList newWithStorage: storage.
	
	storage add: '1'.
	storage add: '2'.
	storage add: '3'.
	storage add: '4'.
	storage add: '5'.
	storage add: '6'
