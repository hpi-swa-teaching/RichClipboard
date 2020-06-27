instance creation
resetDefaultInstance
	self default destroy.
	DefaultInstance := nil.
	^ self default