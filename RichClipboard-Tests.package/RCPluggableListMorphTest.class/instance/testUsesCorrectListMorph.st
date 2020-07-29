testing
testUsesCorrectListMorph
	| clippingsList pluggableListMorph storage |
	
	storage := RCStorage new.
	clippingsList := RCClippingsList newWithRichClipboard: richClipboard.
	pluggableListMorph := RCPluggableListMorph newWithClippingsList: clippingsList.
	
	self assert: pluggableListMorph listMorph = clippingsList
