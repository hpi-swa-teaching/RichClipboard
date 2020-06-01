as yet unclassified
keyStroke: event 
	"({Character lf. Character cr. Character enter} includes: event keyCharacter)
		ifTrue: [^ self triggerEvent: #returnPressed with: self contents asString].
	({Character escape} includes: event keyCharacter)
		ifTrue: [^ self triggerEvent: #escapePressed]."
	super keyStroke: event