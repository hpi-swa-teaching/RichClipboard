testing
testUsesCorrectListMorph
	| clippingsList pluggableListMorph storage |
	
	storage := RCStorage new.
	clippingsList := RCClippingsList newWithStorage: storage
										andSystemClipboard: RCSystemClipboardNullObject.
	pluggableListMorph := RCPluggableListMorph newWithClippingsList: clippingsList.
	
	self assert: pluggableListMorph listMorph = clippingsList
