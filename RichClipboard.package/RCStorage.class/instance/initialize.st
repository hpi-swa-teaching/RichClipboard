initialize-release
initialize
	super initialize.
	self privateModeActive: false.
	self storageBackend: LinkedList new