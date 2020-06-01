testing
testUsesCorrectListMorph
	| clippingsList pluggableListMorph |
	
	clippingsList := RCClippingsList newWithStorage: RCStorage new.
	pluggableListMorph := RCPluggableListMorph newWithClippingsList: clippingsList.
	self assert: pluggableListMorph listMorph = clippingsList