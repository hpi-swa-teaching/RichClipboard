private
createListMorph
	^ self listMorph listSource: self;
		 hResizing: #spaceFill;
		 vResizing: #shrinkWrap;
		 cellPositioning: #leftCenter;
		 setProperty: #indicateKeyboardFocus toValue: #never;
		 yourself