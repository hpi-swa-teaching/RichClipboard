initialize-release
initialize
	| scrollPane |
	super initialize.
	
	self setLabel: 'RichClipboard'.
	
	scrollPane := ScrollPane new.
	self addMorph: scrollPane frame: (0@0 corner: 1@1).
	self clippingsList: (RCClippingsList newWithStorage: self storage).
	scrollPane scroller addMorph: self clippingsList