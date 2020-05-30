editing
keyStroke: event
	 ({ Character lf. Character cr. Character enter } includes: event keyCharacter) ifTrue: [
		self triggerEvent: #returnPressed with: self contents asString
	] ifFalse: [
		super keyStroke: event
	]