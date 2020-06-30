testing
testUpdateTitleAlphabeticallySorted
	window toggleAlphabeticSort.
	Transcript show: window label.
	self assert: window label = 'ReichesKlammerBrett (z-a)'.
	
	window toggleAlphabeticSort.
	self assert: window label = 'ReichesKlammerBrett (a-z)'
