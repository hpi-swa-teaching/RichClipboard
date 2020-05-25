as yet unclassified
testOpenInWorld
	| storage window |
	storage := RCStorage new.
	window := RCClippingsWindow newWithStorage: storage.
	self shouldnt: [ window openInWorld ] raise: Error.
	window delete
	