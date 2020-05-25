as yet unclassified
testNewWithStorage
	| storage window |
	storage := RCStorage new.
	self shouldnt: [ window := RCClippingsWindow newWithStorage: storage ] raise: Error
	