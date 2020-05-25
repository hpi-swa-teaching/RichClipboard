initialize-release
initialize
	| scrollPane pasteUpMorph |
	super initialize.
	self setLabel: 'RichClipboard'.
	self extent: 400@400.
	scrollPane := ScrollPane new.
	pasteUpMorph := PasteUpMorph new.
	pasteUpMorph extent: 1000@1000.
	scrollPane scroller addMorph: pasteUpMorph.
	self clippingsList: (RCClippingsList newWithStorage: self storage).
	pasteUpMorph addMorph: self clippingsList.
	self addMorph: scrollPane frame: (0@0 corner: 1@1)