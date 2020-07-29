testing
testUsesCorrectListMorph
<<<<<<< HEAD
	| clippingsList pluggableListMorph storage |
	
	storage := RCStorage new.
	clippingsList := RCClippingsList newWithStorage: storage
										andSystemClipboard: RCSystemClipboardNullObject.
	pluggableListMorph := RCPluggableListMorph newWithClippingsList: clippingsList.
	
=======
>>>>>>> master
	self assert: pluggableListMorph listMorph = clippingsList