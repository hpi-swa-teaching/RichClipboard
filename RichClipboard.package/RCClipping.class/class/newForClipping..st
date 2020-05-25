initialize-release
newForClipping: clipping
	| rcClipping |
	
	rcClipping := RCClipping basicNew.
	rcClipping clipping: clipping.
	rcClipping initialize.
	
	^ rcClipping