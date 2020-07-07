testing
testUpdateTitleSortedByDate
	window toggleDateSort.
	self assert: window label = 'ReichesKlammerBrett (old-new)'.
	
	window toggleDateSort.
	self assert: window label = 'ReichesKlammerBrett (new-old)'
