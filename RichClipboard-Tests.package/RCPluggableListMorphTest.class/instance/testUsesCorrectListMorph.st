testing
testUsesCorrectListMorph
	| clippingsList pluggableListMorph |
	
	clippingsList := RCClippingsList newWithStorage: RCStorage new
										andSystemClipboard: RCSystemClipboardNullObject.
	pluggableListMorph := RCPluggableListMorph newWithClippingsList: clippingsList.
	self assert: pluggableListMorph listMorph = clippingsList