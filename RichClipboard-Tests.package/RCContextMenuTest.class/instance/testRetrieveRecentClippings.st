testing
testRetrieveRecentClippings
	| recentClippings |
	
	recentClippings := self clippingsList recentClippings: 5.
	self assert: (recentClippings size = 5)