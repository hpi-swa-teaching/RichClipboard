testing
testUpdateTitleAlphabeticallySorted
	window toggleAlphabeticSort.
	self assert: window label = 'ReichesKlammerBrett (z-a)'.
	
	window toggleAlphabeticSort.
	self assert: window label = 'ReichesKlammerBrett (a-z)'
