initialize-release
initialize
	super initialize.
	self autoFit: false.
	self backgroundColor: Color white.
	self borderColor: Color black.
	self borderWidth: 1.
	self contents: '.*'