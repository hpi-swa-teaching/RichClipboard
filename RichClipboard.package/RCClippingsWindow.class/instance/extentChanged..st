initialize-release
extentChanged: aPoint
	super extentChanged: aPoint.
	self clippingsList ifNotNil: [
		self clippingsList width: self layoutBounds right - self layoutBounds left
	]