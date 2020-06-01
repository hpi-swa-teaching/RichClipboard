testing
testRetrieveRecentClippings
	| recentClippings |
	
	recentClippings := clippingsList recentClippings: 5.
	self assert: (recentClippings size = 5)