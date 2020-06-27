accessing
default
	^ DefaultInstance ifNil: [
		DefaultInstance := RichClipboard new
	]